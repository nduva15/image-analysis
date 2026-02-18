#!/usr/bin/env bash
set -euo pipefail

RAMDISK_ROOT="/mnt/ramdisk"
RAMDISK_SIZE="512M"

RAM_CROPS_DIR="$RAMDISK_ROOT/crops"                 # Stage 1 writes crops, Stage 2 reads them
RAM_FRAMES_DIR="$RAMDISK_ROOT/frames_480p"          # Stage 1 writes downscaled frames
RAM_CONFIRMED_DIR="$RAMDISK_ROOT/confirmed_frames"  # Stage 2 confirmed window for Stage 3

STAGE1_ROOT="/home/waspdetect/Documents/stage_1/FBS"
STAGE2_ROOT="/home/waspdetect/Documents/stage_2"
STAGE3_ROOT="/home/waspdetect/Documents/stage_3"
STAGE3_SCRIPT="$STAGE3_ROOT/deployment_ready_3_trt_fp32.py"

# Stage 3 upload to drive
STAGE3_OUTPUT_DIR="$STAGE3_ROOT/data/output_trt_fp32"
STAGE3_DETECTED_CODE=43

# rclone
RCLONE_REMOTE="waspdetected"

# email alert
BEEKEEPER_EMAIL="manikiri982@gmail.com"
SENDER_EMAIL="manikiri982@gmail.com"

IDLE_TIMEOUT=30
SLEEP_BEFORE_STAGE1=20

# stage 2 exits with this code when it passes primary verification
STOP_CODE=42

stage1_pid=""
stage2_pid=""

# For status prints
last_stage1_frame=""
stage1_last_printed=0

# returns newest file name in a directory
latest_file_in_dir() {
  local d="$1"
  ls -1t "$d" 2>/dev/null | head -n 1 || true
}

# cleanup runs on EXIT to avoid leaving background processes running.
cleanup() {
  if [[ -n "${stage1_pid}" ]] && kill -0 "${stage1_pid}" 2>/dev/null; then
    { kill "${stage1_pid}" 2>/dev/null || true; wait "${stage1_pid}" 2>/dev/null || true; } 2>/dev/null || true
  fi
  if [[ -n "${stage2_pid}" ]] && kill -0 "${stage2_pid}" 2>/dev/null; then
    { kill "${stage2_pid}" 2>/dev/null || true; wait "${stage2_pid}" 2>/dev/null || true; } 2>/dev/null || true
  fi
}
trap cleanup EXIT


# Run pipeline continuously (restart after each cycle)
while true; do
  # reset per-cycle state
  stage1_pid=""
  stage2_pid=""
  last_stage1_frame=""
  stage1_last_printed=0

  stage1_end_epoch=""
  stage2_end_epoch=""
  stage1_rc=0
  stage2_rc=0
  stage3_ran=0
  stage3_rc=0

  echo "[Pipeline] Starting bee/wasp pipeline..."
  echo "[Pipeline] RAMDISK mountpoint: $RAMDISK_ROOT"

  # ensure /mnt/ramdisk is tmpfs (RAM disk)
  sudo mkdir -p "$RAMDISK_ROOT"

  # mount tmpfs only if it is not already mounted.
  if ! mountpoint -q "$RAMDISK_ROOT"; then
    if [[ -n "$(ls -A "$RAMDISK_ROOT" 2>/dev/null || true)" ]]; then
      echo "[Warning] $RAMDISK_ROOT is not empty; mounting tmpfs will hide existing files under it."
    fi
    echo "[Pipeline] Mounting tmpfs at $RAMDISK_ROOT (size=$RAMDISK_SIZE)..."
    sudo mount -t tmpfs -o "size=$RAMDISK_SIZE" tmpfs "$RAMDISK_ROOT"
  fi

  # only proceed if /mnt/ramdisk is tmpfs.
  fstype="$(findmnt -n -o FSTYPE --target "$RAMDISK_ROOT" 2>/dev/null || true)"
  if [[ "$fstype" != "tmpfs" ]]; then
    echo "[Error] $RAMDISK_ROOT is not tmpfs (FSTYPE=$fstype). Refusing to clear." >&2
    exit 1
  fi

  echo "[Pipeline] Verified $RAMDISK_ROOT is tmpfs (RAM disk)."

  # Create clean folders in ram
  sudo rm -rf "$RAM_CROPS_DIR" "$RAM_FRAMES_DIR" "$RAM_CONFIRMED_DIR"
  sudo mkdir -p "$RAM_CROPS_DIR" "$RAM_FRAMES_DIR" "$RAM_CONFIRMED_DIR"
  sudo chmod 777 "$RAM_CROPS_DIR" "$RAM_FRAMES_DIR" "$RAM_CONFIRMED_DIR" || true

  echo "[Pipeline] RAMDISK usage:"
  df -hT "$RAMDISK_ROOT" || true

  # start Stage 2 first
  echo "[Pipeline] Starting Stage 2 (classifier) in background..."
  cd "$STAGE2_ROOT"
  /usr/bin/python3 test_run_reparam.py &
  stage2_pid=$!

  # small delay so Stage 2 finishes loading models and enters its loop.
  sleep "$SLEEP_BEFORE_STAGE1"

  # start Stage 1 after Stage 2 is ready
  echo "[Pipeline] Starting Stage 1 (FBS-ABL) in background..."
  stage1_start_epoch=$(date +%s)

  bash -lc "
    source ~/miniforge3/etc/profile.d/conda.sh
    conda activate fbs-abl
    cd '$STAGE1_ROOT'
    export FBS_NTH=1
    exec python scripts/run_fbs_abl_data2.py
  " &
  stage1_pid=$!

  # monitor both processes
  while true; do
    # track the latest frame that Stage 1 wrote.
    nf="$(latest_file_in_dir "$RAM_FRAMES_DIR")"
    if [[ -n "$nf" ]]; then
      last_stage1_frame="$nf"
    fi

    # stage 1 finished?
    if [[ -z "$stage1_end_epoch" ]] && [[ -n "$stage1_pid" ]] && ! kill -0 "$stage1_pid" 2>/dev/null; then
      set +e
      wait "$stage1_pid"
      stage1_rc=$?
      set -e
      stage1_end_epoch=$(date +%s)

      # print once when stage 1 ends
      if [[ "$stage1_last_printed" -eq 0 ]]; then
        echo "[Pipeline] Last Stage 1 frame exported (frames_480p): ${last_stage1_frame:-<none>}"
        stage1_last_printed=1
      fi
    fi

    # stage 2 finished?
    if [[ -z "$stage2_end_epoch" ]] && [[ -n "$stage2_pid" ]] && ! kill -0 "$stage2_pid" 2>/dev/null; then
      set +e
      wait "$stage2_pid"
      stage2_rc=$?
      set -e
      stage2_end_epoch=$(date +%s)
      echo "[Pipeline] Stage 2 finished (rc=${stage2_rc}) at ${stage2_end_epoch}"
    fi

    # If Stage 2 exits with STOP_CODE, stop Stage 1 and run Stage 3.
    if [[ -n "$stage2_end_epoch" ]] && [[ "$stage2_rc" -eq "$STOP_CODE" ]]; then
      echo "[Pipeline] Wasp classified - verifying through detector (Stage 3)..."

      # stop Stage 1 to avoid new files being written during verification.
      if [[ -z "$stage1_end_epoch" ]] && kill -0 "$stage1_pid" 2>/dev/null; then
        echo "[Pipeline] Stopping Stage 1 before Stage 3..."
        set +e
        {
          kill "$stage1_pid" 2>/dev/null || true
          wait "$stage1_pid"
          stage1_rc=$?
        } 2>/dev/null
        set -e
        stage1_end_epoch=$(date +%s)
        echo "[Pipeline] Stage 1 terminated."
      fi

      # confirmed frames info
      if [[ -d "$RAM_CONFIRMED_DIR" ]]; then
        count_conf=$(ls -1 "$RAM_CONFIRMED_DIR" 2>/dev/null | wc -l | tr -d ' ')
        first_conf=$(ls -1 "$RAM_CONFIRMED_DIR" 2>/dev/null | sort -V | head -n 1 || true)
        last_conf=$(ls -1 "$RAM_CONFIRMED_DIR" 2>/dev/null | sort -V | tail -n 1 || true)
        echo "[Pipeline] Confirmed frames in RAM: count=$count_conf, first=$first_conf, last=$last_conf"
      fi

      echo "[Pipeline] frames_480p folder size: $(du -sh "$RAM_FRAMES_DIR" 2>/dev/null | awk '{print $1}' || echo 0)"

      # stage 3 runs the detector on confirmed frames and prints final decision.
      echo "[Pipeline] Running Stage 3 now..."

      # ensure Stage 3 output dir exists, and avoid stale images from a previous run
      mkdir -p "$STAGE3_OUTPUT_DIR"
      rm -f "$STAGE3_OUTPUT_DIR"/*.jpg 2>/dev/null || true

      cd "$STAGE3_ROOT"
      set +e
      /usr/bin/python3 "$STAGE3_SCRIPT"
      stage3_rc=$?
      set -e
      echo "[Pipeline] Stage 3 finished (rc=${stage3_rc})."

      # upload the annotated frames to the drive and alart beekeeper
      if [[ "$stage3_rc" -eq "$STAGE3_DETECTED_CODE" ]]; then
        echo "[Pipeline] Wasp confirmed by Stage 3 - uploading annotated frames..."

        ts="$(date '+%Y-%m-%d_%H-%M-%S')"
        remote_dir="${RCLONE_REMOTE}:Alart_wasp/wasp_${ts}"

        shopt -s nullglob
        imgs=("$STAGE3_OUTPUT_DIR"/*.jpg)
        frames_count=${#imgs[@]}

        echo "[Pipeline] Creating remote folder: ${remote_dir}"
        rclone mkdir "$remote_dir" || echo "[Warning] rclone mkdir failed."

        echo "[Pipeline] Uploading annotated frames to: ${remote_dir}"
        if rclone copy "$STAGE3_OUTPUT_DIR" "$remote_dir" --include "*.jpg"; then
          folder_link="$(rclone link "$remote_dir" 2>/dev/null || true)"
          if [[ -n "$folder_link" ]]; then
            link_line="Drive link: $folder_link"
          else
            link_line="Drive folder: $remote_dir"
          fi

          # send mail to the beekeeper
          printf "From: %s\nTo: %s\nSubject: WASP ALERT (%s)\n\n Wasp presence detected at the beehive entrance.\n%s\nFrames: %s\n" \
            "$SENDER_EMAIL" "$BEEKEEPER_EMAIL" "$ts" "$link_line" "$frames_count" | msmtp "$BEEKEEPER_EMAIL" || echo "[Warning] alert email failed."
        else
          echo "[Pipeline] rclone copy failed."
        fi
      else
        echo "[Pipeline] Stage 3 not confirmed (rc=${stage3_rc}) - not uploading."
      fi

      stage3_ran=1
      break
    fi

    # exit loop when both stage 1 and stage 2 have finished and stage 3 was not triggered.
    if [[ -n "$stage1_end_epoch" ]] && [[ -n "$stage2_end_epoch" ]]; then
      break
    fi

    sleep 0.1
  done

  # if Stage 3 was NOT called, report "No wasp detected" + timings.
  if [[ "$stage3_ran" -eq 0 ]]; then
    echo "[Pipeline] No wasp detected."

    # calculate timing for evaluations
    stage1_dur=$((stage1_end_epoch - stage1_start_epoch))

    raw_stage2_dur=$((stage2_end_epoch - stage1_start_epoch))
    if [[ "$raw_stage2_dur" -gt "$IDLE_TIMEOUT" ]]; then
      stage2_dur=$((raw_stage2_dur - IDLE_TIMEOUT))
    else
      stage2_dur=$raw_stage2_dur
    fi

    pipeline_start=$stage1_start_epoch
    pipeline_end=$stage2_end_epoch
    pipeline_dur=$((pipeline_end - pipeline_start))

    echo
    echo "[Time] Stage 1 (FBS-ABL):"
    echo "       start = $stage1_start_epoch"
    echo "       end   = $stage1_end_epoch"
    echo "       dur   = ${stage1_dur} s"
    echo "       rc    = ${stage1_rc}"

    echo
    echo "[Time] Stage 2 (classifier, minus ${IDLE_TIMEOUT}s idle tail):"
    echo "       start = $stage1_start_epoch"
    echo "       end   = $stage2_end_epoch"
    echo "       dur   = ${stage2_dur} s"
    echo "       rc    = ${stage2_rc}"

  fi

  cleanup || true

  # start next cycle from the beginning.
done
