#ifndef ZHAW_IMGMERGER_H
#define ZHAW_IMGMERGER_H

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/calib3d.hpp>

#include "zhaw_image.h"
#include <fstream>
#ifndef DONT_USE_FILESYSTEM
#include <filesystem>
namespace fs = std::filesystem;
#endif
#include "coin_mite_detector.h"


using namespace cv;
using namespace std;
using namespace cv::xfeatures2d;

struct ImageMergerParameter
{
    ImageMergerParameter();
    double overviewScale, detailsScale, ORBscaleFactor, ORBscaleFactorOvw, loweRatioTh;
    int ORBnFeatures, ORBnFeaturesOvw, ORBnLevels, ORBnLevelsOvw;
    int ovwNSeg;
    double minimal_sharpeness, minimal_resolution, empty_threshold;
    int mini_area_side_lenght,candidate_rows,candidate_cols;
    size_t sharpeness_subdivision;
    float expand_factor_half,cut_expand_factor;
    double loc_mite_supression_dist,detail_center_cut_fraction,minimal_available_ram_bytesize;
    double is_mite_threshold;
    std::string lgbm_model_dump_file;
#ifdef MULTITHREADED_COUNT
    size_t nb_workers;
#endif
};

struct AquisitionParameter
{
    double minimal_sharpness, minimal_resolution, empty_threshold;
    double detail_center_cut_fraction,minimal_available_ram_bytesize;
};

struct DumpPatch
{
    Mat image;
    string meta_data;
    string file_name; //file_nampe.jpg for image and file_name.dat for meta_data
};

class ZHAW_ImgMerger
{
public:
    ZHAW_ImgMerger(ImageMergerParameter parameter = ImageMergerParameter());

    //set parameter
    void get_acquisition_parameter(AquisitionParameter& parameter) const;
    void set_acquisition_parameter(const AquisitionParameter& parameter);

#ifndef PARAMETER_READER_SUPPORT
    void read_parameter_coin(EllipseDetectorParameter parameter);
    void read_parameter_coin_refine(EllipseDetectorParameter parameter);
#endif

    //collect images
    void reset_merger();
    void set_overview_image(Mat image);   

    bool detect_coins_on_overview(); //assert overview_image is set
    vector<Mat> get_coin_candidates_redered();
    double get_coin_radius(size_t cand_index); //coin radius in pixel (use to compute resolution with known coin radius in mm)

    void set_resolution_overview(double resolution); //unit: pixel/mm
    void compute_overview_features();
    bool overview_is_prepared() const; //check resolution is set and overview_features are computed

    bool add_detail_image(Mat imgData,std::string name = ""); //assert overview_is_prepared

    Mat get_visual_feedback(); //assert overview_image is set, attention: should be const but there is no nonmodifiable mat in opencv please dont modify
    Mat get_overview(); //assert overview_image is set, attention: should be const but there is no nonmodifiable mat in opencv please dont modify

    //mini_areas query interface
    bool all_mini_areas_good_quality() const;
    size_t nb_mini_areas() const;
    bool mini_area_containing(Point2f point_overview, size_t& mini_area_index); //ensures mini_area_index < nb_mini_areas()
    MiniAreaState state_of_mini_area(size_t mini_area_index) const;//assert area_ind < nb_mini_areas()

    //data storing interface
    DumpPatch overview_to_store();
    vector<DumpPatch> mini_areas_to_store();
    vector<DumpPatch> mini_areas_to_store(size_t available_ram_bytesize);
    //deprecated: use overview_to_store and mini_areas_to_store
    DumpPatch single_patch_to_store(size_t patch_index);// assert patch_index <= nb_mini_areas() store only if .file_name != nopatch_marker

#if defined(LOG_ON_DEMAND) & !defined(BUILD_DEV_GUI_ACTIVE)
    std::string log_string();
#endif

#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR) or defined(BUILD_COUNTER_APP)
public:
#else
protected:
#endif
    bool store_data_to_folder(std::string folder_name);

    MiniArea mini_area(size_t area_ind); //assert area_ind < nb_mini_areas()
    Point2f overview_to_mini_area(size_t area_ind, Point2f point_overview); //assert area_ind < nb_mini_areas() && mini_area(area_ind).has_image()
    Point2f mini_area_to_overview(size_t area_ind, Point2f point_mini_area); //assert area_ind < nb_mini_areas() && mini_area(area_ind).has_image()
    Point2f detail_to_overview(int detail_index, Point2f point_on_detail);
    CoinDetector& get_coin_detector(){return coin_detector;}
protected:
    void calculateOverview();
    bool calculateDetail(int idx);
    bool testHomographyRealistic(int idx);
    vector<Point2f> coordinatesFromOverviewToDetail(int detailImgIndex, vector<Point2f> pointOnOverview);

#ifdef MITE_TRUTH
    virtual void init_mini_areas();
#else
    void init_mini_areas();
#endif
    MiniAreaState state_of_mini_area(const MiniArea& area) const;
    Scalar state_to_fill_color(MiniAreaState state);
    Scalar states_to_border_color(MiniAreaState state1,MiniAreaState state2);
    void render_mini_areas();
    void update_mini_areas(size_t detail_index);
    bool better_quality(const MiniArea& area1, const MiniArea& area2);

    int mini_area_side_lenght;// in mm
    size_t sharpeness_subdivision;
    float expand_factor_half;
    float cut_expand_factor;
    double detail_center_cut_fraction;
    double minimal_available_ram_bytesize;
    int candidate_rows;
    int candidate_cols;

    vector<MiniArea> mini_areas;
    int mini_area_pixel_size,mini_nx,mini_ny;
    bool all_mini_areas_good;
    CoinDetector coin_detector;

    ZHAW_Image overview_image;
    Mat feedback_image;
    double overview_resolution;

    cv::Ptr<ORB> detector, detectorOvw;
    cv::Ptr<DescriptorMatcher> matcher;
    vector<ZHAW_Image> detailImages;

    double overviewScale, detailsScale, loweRatioTh;
    int ORBnLevels;
    int ovwNSeg;
    double minimal_sharpeness, minimal_resolution, empty_threshold;

    void printlog(string s);
#ifdef BUILD_DEV_GUI_ACTIVE
    std::vector< std::vector<DMatch>> overview_matches;
    //logging
    void (*logCallback)(void *, string);
    void *logCallbackContext;
#else
#ifdef LOG_TO_FILE
    static std::ofstream merger_log_file;
#endif
#ifdef LOG_ON_DEMAND
    static std::stringstream merger_log_stream;
#endif
#endif //dev_gui
};
#endif // ZHAW_IMGMERGER_H
