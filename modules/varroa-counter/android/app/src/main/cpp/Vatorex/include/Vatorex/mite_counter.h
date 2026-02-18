#ifndef MITE_COUNTER_H
#define MITE_COUNTER_H

#include "config_vatorex.h"
#include "Vatorex/zhaw_imgmerger.h"
#include "LightGBM_Wrapper/lgbm_model.h"

#ifdef MULTITHREADED_COUNT
#include "threadutils.h"
#endif

#include <filesystem>
namespace fs = std::filesystem;

#ifdef MITE_TRUTH
using t_ellipse_detector::Ellipse;
static constexpr size_t nb_mite_types{2};
enum MiteType
{
    Sure = 0,
    Potential
};
static constexpr std::array<MiteType,nb_mite_types> all_mite_types{MiteType::Sure,MiteType::Potential};
std::string mite_type_to_string(MiteType type);

struct MiteReference
{
    MiteType type;
    Ellipse ellipse;
    std::string image_name;
};
struct Stats
{
    RType match_tol,mite_supression_distance,mite_threshold;
    size_t nb_cands;
    size_t nb_classified_positive;
    size_t nb_classified_negative;
    std::array<RType,nb_mite_types> cand_ratio,cand_ratio_truth;
    std::array<RType,nb_mite_types> true_positives;
    std::array<RType,nb_mite_types> false_negatives;
    std::array<size_t,nb_mite_types> type_true_counts;
};
std::string write_stats_to_string(const Stats& stats, std::string separator  = "\n");
#endif

class Mite_Counter: public ZHAW_ImgMerger
{
public:
    Mite_Counter(ImageMergerParameter merger_parameter = ImageMergerParameter(),EllipseDetectorParameter mite_parameter  = default_mite_pars());
#ifdef MULTITHREADED_COUNT
    ~Mite_Counter();
#endif
    bool load_data(std::string folder_name);
    void set_mite_threshold(double new_threshold);

#if defined(BUILD_DEV_GUI_ACTIVE)
    size_t detect_render_mites();
    MiteDetector& get_mite_detector(){return extractor_data.mite_detector;}
#endif
    size_t detect_mites();
protected:
#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR)
public:
#endif
#ifdef MITE_TRUTH
    void init_mini_areas()
    {
        ZHAW_ImgMerger::init_mini_areas();
        if(mite_references.size() != mini_areas.size())
        {
            mite_references.clear();
            mite_references.resize(mini_areas.size());
        }
    }
#endif
    void compute_all_candidates();

#if defined(HSL_HIST_FOR_CANDS) and defined(HIST_FOR_CONTEXT)
    struct FeatureType
    {
        Mat mite,context;
    };
#else
    using FeatureType = Mat;
#endif
    double candidate_mite_prob(FeatureType hist,lgbm_wrapper::Model& mite_classifier);
#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR)
    void store_mite_candidates(std::string folder_name);
    void set_max_supression_dist(double dist);
#endif

#ifdef MITE_TRUTH
    void set_truth_match_tol(RType tol);
    void set_false_margin_match_tol(RType tol);
    void init_stats();
    void finalize_stats();
    bool ellipsis_match(const Ellipse& ell0, const Ellipse& ell1, RType tol);
    bool count_truth_match(const Ellipse& ell0, const Ellipse& ell1, RType tol);
    const Stats& mite_stats();
    void store_mite_stats(std::string file_name);
    bool read_mite_detection_truth_old(std::string& file_name, char delim = ',');
    bool read_mite_truth(std::string& file_name);
    void render_mini_area_truth(size_t mini_area_index, Mat to_render);
    bool write_mite_truth(const std::string& file_name);
    void add_to_truth(MiteType type, Ellipse ellipse,size_t mini_area_ind);
    void remove_from_truth(int z0, int z1,size_t mini_area_ind);
#endif

#if defined(BUILD_DEV_GUI_ACTIVE)
public:
    bool load_data_gui(std::string folder_name);

    void render_mini_area_bound(int mini_area_index, Mat to_render);
    void compute_render_candidates_on(int mini_area_index, Mat to_render);

    vector<ZHAW_Image>& get_detail_images(){return detailImages;}
    //homograph gui interface
    void setParameters(ImageMergerParameter parameter);

    ZHAW_Image getOverviewImage();
    int getNumOfDetailImages();
    std::string detail_image_name(size_t detail_index);
    ZHAW_Image getDetailImage(int idx);
    vector<int> getDetailImagesContainingPoints(vector<Point2f> points); //better name indexes of used to query resolution and sharpeness in gui
    Point2f coordinatesFromOverviewToDetail(int detailImgIndex, Point2f pointOnOverview);
    using ZHAW_ImgMerger::coordinatesFromOverviewToDetail;

    double getVarianceOfLaplacian(int detailImgIndex, vector<Point2f> points_detail); //points in in detail coords
    double getResolution(int detailImgIndex, vector<Point2f> points_overview); //points in overview coords

    vector<DMatch> getOverviewMatches(int idx);
    void setCallbackFunction(void *context, void (*fp)(void *, string));
#endif
    struct ThreadLocalData
    {
        ThreadLocalData(std::string fast_gdb_dump_file,int nb_gdb_features, EllipseDetectorParameter mite_pars)
            :mite_detector(mite_pars)
            ,mite_classifier(fast_gdb_dump_file,nb_gdb_features)
        {
        }
        vector<size_t> loc_max_supression;
        MiteDetector mite_detector;
        vector<Ellipse> cand_elipses_mite;
        lgbm_wrapper::Model mite_classifier;
    };
    void extract_candidates_on_area(int i, int j, ThreadLocalData& ext_data, size_t thread_nb = 0);
#ifdef HSL_HIST_FOR_CANDS
    FeatureType extract_histogram(const Ellipse& candidate, Mat image, const int max_size);
#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR)
    void write_histogram(std::string file_name, Mat hist);
    vector<FeatureType> mite_hists;
#endif
#endif

#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR)
    vector<Mat> mite_candidates;
#endif

    vector<vector<Point2f>> detected_mites_overview_pos;
    double loc_mite_supression_dist;
    double is_mite_threshold;
#ifdef HSL_HIST_FOR_CANDS
    static constexpr array<int,3> hist_size{15,10,15};//h,l,s: nb-levels
    static constexpr size_t nb_features{hist_size[0]*hist_size[1]*hist_size[2]+hist_size[0]+hist_size[1]+hist_size[2]};
#endif
#ifdef MITE_TRUTH
    std::vector<std::vector<MiteReference>> mite_references;
    vector<size_t> true_mite_candidate_inds,false_margin_mite_candidate_inds;
    vector<Point2f> true_mites_overview_pos;
    Stats mites_found;
    RType truth_match_tol,false_margin_match_tol;
#endif
    ThreadLocalData extractor_data;
#ifdef MULTITHREADED_COUNT
    void let_workers_loose();
    void worker_task(size_t thread_nb, std::string fast_gdb_dump_file,int nb_gdb_features, EllipseDetectorParameter mite_pars);
    void counter_worker(ThreadLocalData& ext_data,size_t thread_nb);
    std::atomic<size_t> area_counter;
    std::atomic<size_t> work_ready;
    std::mutex work_ready_mutex;
    std::condition_variable work_ready_signal;
    size_t number_of_workers;
    ThreadBarrier worker_barrier;
    ThreadGroup workers;
    ThreadInteruptor interuptor;
#endif
};
#endif // MITE_COUNTER_H
