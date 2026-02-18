#ifndef COIN_MITE_DETECTOR_H
#define COIN_MITE_DETECTOR_H

#include "config_vatorex.h"
//#ifdef BUILD_HOUGH_BASED
//#include "EllipsisDetector/ellipticalhough.h"
//using EllipseDetector = t_ellipse_detector::EllipticalHough;
//#else
#include "elliptical_fitting.h"
using EllipseDetector = t_ellipse_detector::EllipticalFitt;
//#endif
//#include "ellipticalhough.h"
//using EllipseDetector = t_ellipse_detector::EllipticalHough;
using t_ellipse_detector::Ellipse;
using t_ellipse_detector::vector;
using t_ellipse_detector::EllipseDetectorParameter;
using t_ellipse_detector::RType;

EllipseDetectorParameter default_coin_pars();
EllipseDetectorParameter default_coin_refine_pars();
EllipseDetectorParameter default_mite_pars();
using namespace cv;


class CoinDetector
{
public:
    CoinDetector(EllipseDetectorParameter coin_pars = default_coin_pars(),
                 EllipseDetectorParameter coin_refine_pars = default_coin_refine_pars());

#ifdef PARAMETER_READER_SUPPORT
    bool read_parameter_coin(std::string& parameter_file_name);
    bool read_parameter_coin_refine(std::string& parameter_file_name);
#else
    void read_parameter_coin(EllipseDetectorParameter parameter);
    void read_parameter_coin_refine(EllipseDetectorParameter parameter);
#endif

    void detect_coins(const Mat& overview_image);
    double get_coin_radius(size_t cand_index);
    vector<Mat> get_coin_candidates_redered(const Mat& overview_image);

#ifdef EDGE_OUT
    Mat get_edge();
#endif
private:
    static constexpr RType match_tol{0.1};
    static constexpr double coin_nb_pixel_ss{600};
    Mat get_coin_candidate_rendered(size_t cand_index,const Mat& overview_image);

    EllipseDetectorParameter parameter_coin_detection;
    EllipseDetectorParameter parameter_coin_detection_refine;
    t_ellipse_detector::ConvertGrayGuided coin_filter;
    t_ellipse_detector::ConvertGrayBlur gauss_filter_refine;
    EllipseDetector ellipsis_detector;
    vector<Ellipse> coin_cands,refined_cands;
    RType scale_factor;
};

class MiteDetector
{
public:
    MiteDetector(EllipseDetectorParameter mite_pars = default_mite_pars());

#ifdef PARAMETER_READER_SUPPORT
    bool read_parameter_mite(std::string& parameter_file_name);
#else
    void read_parameter_mite(EllipseDetectorParameter parameter);
#endif

    const EllipseDetectorParameter& mite_parameter() const;

    void detect_mites(const Mat& image, RType image_resolution);
    bool get_mite_candidate(size_t cand_index,Ellipse& ellipse);
    void render_detected_mites(Mat image);

#ifdef EDGE_OUT
    Mat get_edge();
#endif
private:
    static constexpr RType match_tol{0.1};

    EllipseDetectorParameter parameter_mite_detection;
    t_ellipse_detector::ConvertGrayGuided guided_filter;
    EllipseDetector ellipsis_detector;
    RType scale_factor;
};

#endif // COIN_MITE_DETECTOR_H
