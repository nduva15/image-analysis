from collections import deque
from typing import List, Optional, Tuple

import cv2
import numpy as np
from numba import get_num_threads, njit, prange, set_num_threads


# Numba accelerates the block-wise SAD calculation.
_threads_before = get_num_threads()
set_num_threads(2)
_threads_in_use = get_num_threads()
print(f"Numba parallel threads: using {_threads_in_use}/{_threads_before}")

# block-wise SAD used in FBS-ABL compiled with Numba, using 2 threads.
@njit(parallel=True)
def _sad_per_block(
    frame_a: np.ndarray,
    frame_b: np.ndarray,
    blocks_y: int,
    blocks_x: int,
    block_size: int,
) -> np.ndarray:
    sad = np.zeros((blocks_y, blocks_x), np.float32)

    for by in prange(blocks_y):
        y0 = by * block_size
        y1 = y0 + block_size
        for bx in range(blocks_x):
            x0 = bx * block_size
            x1 = x0 + block_size

            # sum of absolute differences over pixels in this block
            block_sum = 0.0
            for yy in range(y0, y1):
                for xx in range(x0, x1):
                    diff = frame_a[yy, xx] - frame_b[yy, xx]
                    if diff < 0:
                        diff = -diff
                    block_sum += diff

            sad[by, bx] = block_sum

    return sad


class FBSABL:

    def __init__(
        self,
        frame_shape: Tuple[int, int],
        block_size: int,
        init_num_frames: int,
        tau_ratio: float,
        bgs_blur_k: int,
        fmg_blur_k: int,
        shadow_suppression: bool,
        shadow_alpha: float,
        shadow_beta: float,
        d_factor: int,
        rho: float = 0.5,
        c: float = 0.11,
        n_bits: int = 8,
    ):

        # input frame shape (H, W) before cropping for block alignment
        self.orig_height, self.orig_width = frame_shape

        self.block_size = int(block_size)
        self.init_num_frames = int(init_num_frames)

        # crop bottom/right so height/width are multiples of block_size (keeps a clean block grid).
        self.height = (self.orig_height // self.block_size) * self.block_size
        self.width = (self.orig_width // self.block_size) * self.block_size

        # block grid size for the cropped frame
        self.blocks_y = self.height // self.block_size
        self.blocks_x = self.width // self.block_size
        self.block_area = self.block_size * self.block_size

        # grayscale value range for 8 bit
        self.n_bits = int(n_bits)
        self.gray_max = float((1 << self.n_bits) - 1)

        self.rho = float(rho)

        # parameters for adaptive learning rate
        self.c = float(c)
        self.m = self.c - 0.01

        # parameters for global-change handling (beta scaling)
        self.T = 20.0
        self.beta_low = 1.0
        self.beta_high = 8.0

        # parameters used to compute mu (weight for delta/epsilon updates)
        self.u = 1.275
        self.v = 0.15

        # foreground threshold (tau_ratio * gray_max)
        self.tau = float(tau_ratio * self.gray_max)

        self.bgs_blur_k = int(bgs_blur_k)
        self.fmg_blur_k = int(fmg_blur_k)

        self.update_delay = max(1, int(d_factor))

        # internal model state arrays (background, delta record, epsilon)
        self.background: Optional[np.ndarray] = None  # float32 [H,W]
        self.delta_record = np.zeros((self.height, self.width), dtype=np.float32)
        self.epsilon = np.zeros((self.height, self.width), dtype=np.float32)

        # shadow removal parameters
        self.shadow_suppression = bool(shadow_suppression)
        self.shadow_alpha = float(shadow_alpha)
        self.shadow_beta = float(shadow_beta)

        # frame buffer to access the frame from update_delay frames earlier for background modeling.
        self.frame_buffer = deque(maxlen=self.update_delay + 1)
        self.frame_index = 0


    # utility functions used by multiple steps (preprocessing and block-wise SAD)
    def _to_gray_and_crop(self, frame_bgr: np.ndarray) -> np.ndarray:
        gray = cv2.cvtColor(frame_bgr, cv2.COLOR_BGR2GRAY)
        gray = gray[: self.height, : self.width]
        return gray.astype(np.float32)

    def _sad_blocks(self, frame_a: np.ndarray, frame_b: np.ndarray) -> np.ndarray:
        return _sad_per_block(
            frame_a,
            frame_b,
            self.blocks_y,
            self.blocks_x,
            self.block_size,
        )


    # BSI: background scene initialization
    def _bsi_from_gray_frames(self, gray_frames: List[np.ndarray]) -> np.ndarray:
        if len(gray_frames) < 2:
            raise ValueError("Not enough frames for BSI (need at least 2).")

        num_frames = len(gray_frames)
        print(f"BSI: using {num_frames} frames")

        best_block_sad = np.full((self.blocks_y, self.blocks_x), np.inf, dtype=np.float32)
        background = np.zeros((self.height, self.width), dtype=np.float32)

        # compare consecutive frames and keep, per block, the one with the smallest change (lowest SAD).
        for t in range(num_frames - 1):
            frame_t = gray_frames[t]
            frame_next = gray_frames[t + 1]
            sad = self._sad_blocks(frame_t, frame_next)

            for by in range(self.blocks_y):
                y0 = by * self.block_size
                y1 = y0 + self.block_size
                for bx in range(self.blocks_x):
                    x0 = bx * self.block_size
                    x1 = x0 + self.block_size

                    if sad[by, bx] < best_block_sad[by, bx]:
                        best_block_sad[by, bx] = sad[by, bx]
                        background[y0:y1, x0:x1] = frame_t[y0:y1, x0:x1]

        self.background = background.copy()
        self.delta_record.fill(0.0)
        self.epsilon.fill(0.0)
        self.frame_buffer.clear()
        self.frame_index = 0

        return np.clip(background, 0, 255).astype(np.uint8)

    def initialize_background(self, cap: cv2.VideoCapture) -> np.ndarray:
        gray_frames: List[np.ndarray] = []

        while len(gray_frames) < self.init_num_frames:
            ok, frame_bgr = cap.read()
            if not ok:
                break
            gray_frames.append(self._to_gray_and_crop(frame_bgr))

        return self._bsi_from_gray_frames(gray_frames)

    def initialize_background_from_frames(self, frames_bgr: List[np.ndarray]) -> np.ndarray:
        gray_frames = [self._to_gray_and_crop(f) for f in frames_bgr]
        return self._bsi_from_gray_frames(gray_frames)



    # BGM: background model update (includes delta record and epsilon terms)
    def _background_modeling(self, gray_t: np.ndarray, gray_td: np.ndarray) -> None:
        if self.background is None:
            return

        background_prev = self.background.copy()

        sad_bg = self._sad_blocks(background_prev, gray_t)  # SAD between background and current frame
        sad_hist = self._sad_blocks(gray_td, gray_t)        # SAD between historic frame and current frame

        denom = np.maximum(sad_bg, 1e-6)
        ratio = np.abs(sad_bg - sad_hist) / denom
        update_block = ratio > self.rho

        expected_diff = sad_bg / self.block_area

        over_T = expected_diff > self.T
        fraction_over_T = float(np.count_nonzero(over_T)) / float(over_T.size)
        beta = self.beta_high if fraction_over_T > 0.65 else self.beta_low

        if beta == self.beta_high:
            self.delta_record.fill(0.0)
            self.epsilon.fill(0.0)

        alpha_base = -self.m * (expected_diff / self.gray_max) + self.c
        alpha = beta * alpha_base

        for by in range(self.blocks_y):
            y0 = by * self.block_size
            y1 = y0 + self.block_size
            for bx in range(self.blocks_x):
                if not update_block[by, bx]:
                    continue

                x0 = bx * self.block_size
                x1 = x0 + self.block_size

                block_bg_prev = background_prev[y0:y1, x0:x1]
                block_frame = gray_t[y0:y1, x0:x1]

                E_ij = float(expected_diff[by, bx])
                alpha_ij = float(alpha[by, bx])

                # update background for this block
                self.background[y0:y1, x0:x1] = (
                    (1.0 - alpha_ij) * block_bg_prev + alpha_ij * block_frame
                )

                # update delta record and epsilon for this block
                if E_ij <= self.tau or beta == self.beta_high:
                    self.delta_record[y0:y1, x0:x1] = 0.0
                    self.epsilon[y0:y1, x0:x1] = 0.0
                    continue

                mu0 = self.u * (E_ij / self.gray_max) + self.v
                mu = 1.0 if mu0 > 1.0 else mu0

                diff_bg_frame = block_bg_prev - block_frame
                D_block = mu * diff_bg_frame

                delta_block = self.delta_record[y0:y1, x0:x1] + np.abs(D_block)

                over_mask = delta_block > self.gray_max
                if np.any(over_mask):
                    delta_block[over_mask] = 0.0

                self.delta_record[y0:y1, x0:x1] = delta_block
                self.epsilon[y0:y1, x0:x1] = mu * delta_block


    # optional shadow suppression
    def _remove_shadows_simple(self, mask: np.ndarray, gray_t: np.ndarray) -> np.ndarray:
        if self.background is None:
            return mask

        h, w = mask.shape[:2]
        bg = self.background[:h, :w]
        cur = gray_t[:h, :w].astype(np.float32)

        fg = (mask > 0) & (bg > 0)
        if not np.any(fg):
            return mask

        ratio = np.ones_like(cur, dtype=np.float32)
        ratio[fg] = cur[fg] / (bg[fg] + 1e-6)

        shadow = fg & (cur < bg) & (ratio >= self.shadow_alpha) & (ratio <= self.shadow_beta)
        if not np.any(shadow):
            return mask

        mask_clean = mask.copy()
        mask_clean[shadow] = 0
        return mask_clean



    # BGS + FMG: foreground mask generation
    def _foreground_mask(self, gray_t: np.ndarray) -> np.ndarray:
        if self.background is None:
            raise ValueError("Background not initialized.")

        k_bgs = max(1, self.bgs_blur_k)
        k_fmg = max(1, self.fmg_blur_k)

        # BGS: optional blur then background subtraction
        if k_bgs > 1:
            blurred_frame = cv2.blur(gray_t, (k_bgs, k_bgs))
            blurred_bg = cv2.blur(self.background, (k_bgs, k_bgs))
        else:
            blurred_frame = gray_t
            blurred_bg = self.background

        diff_img = np.abs(blurred_frame - self.epsilon - blurred_bg)

        # FMG: smooth the difference image then apply hard threshold (tau)
        diff_blur = cv2.blur(diff_img, (k_fmg, k_fmg))
        return (diff_blur > self.tau).astype(np.uint8) * 255



    #  used by the main script
    def process_frame(self, frame_bgr: np.ndarray) -> np.ndarray:
        if self.background is None:
            raise ValueError("Background not initialized. Call initialize_background() first.")

        gray = self._to_gray_and_crop(frame_bgr)

        self.frame_index += 1
        self.frame_buffer.append(gray)

        # run background modeling only every update_delay frames
        if (
            len(self.frame_buffer) == self.frame_buffer.maxlen
            and self.frame_index % self.update_delay == 0
        ):
            historic = self.frame_buffer[0] 
            self._background_modeling(gray, historic)

        mask = self._foreground_mask(gray)

        if self.shadow_suppression:
            mask = self._remove_shadows_simple(mask, gray)

        return mask
