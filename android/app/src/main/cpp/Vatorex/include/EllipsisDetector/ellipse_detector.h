#ifndef ELLIPSE_DETECTOR_H
#define ELLIPSE_DETECTOR_H

#include "config_ellipsis_detector.h"
#include "parameter.h"
#include <cstdint>
#include <cmath>
#include "opencv2/imgproc.hpp"
#include "opencv2/ximgproc.hpp"
#ifdef EDGE_OUT
#include "opencv2/highgui.hpp"
#endif
#ifdef DEBUG_VECTOR
#include <debug/vector>
#else
#include <vector>
#endif
#include <array>
#include "prep_filter.h"

namespace t_ellipse_detector
{
using namespace cv;
#ifdef DEBUG_VECTOR
using __gnu_debug::vector;
#else
using std::vector;
using std::array;
#endif

constexpr RType pi{RType(3.1415926535897932384626433)};

struct Ellipse
{
    Ellipse(PixPos z_0 = 0,PixPos z_1 = 0,RType a_0 = 0,RType a_1 = 0,
            RType minor = 0, RType votes = 0);

    RType major_size() const;
    RType value(RType x_0, RType x_1) const;
    PixPos z_0,z_1;
    RType a_0,a_1;
    RType minor;
    RType votes;
    array<RType,6> coeffs;
};

/* tomtom:
 * -use automatic threshold in canny -> https://stackoverflow.com/questions/36114047/how-to-access-the-gradient-magnitude-image-that-cvcanny-thresholds
 */

class EllipseDetectorBase
{
public:
    EllipseDetectorBase(EllipseDetectorParameter parameter = EllipseDetectorParameter());
    const EllipseDetectorParameter& params();
    void set_parameter(EllipseDetectorParameter parameter);

    template<class Filter = ConvertGray>
    void extract_ellipsis(const Mat& input_image,Filter filter = Filter());
    void sort_candidates();
    const vector<Ellipse>& ellipse_candidates() const;

#ifdef EDGE_OUT
    void save_edges(std::string file_name);
    const Mat& get_edge() const;
#endif

#ifdef PY_INTERFACE
    void extract_ellips(const Mat& input_image);
#endif

#ifdef ANGLE_TEST
    size_t compute_arc_bin_from_angle(RType minor_s, RType major_s, RType center_angle);
#endif
protected:
    virtual void extract_ellipsis_int() = 0;

    void build_crs_edge();
    void add_candidate(Ellipse new_candidate);

    EllipseDetectorParameter parameter;
    Mat edges;
    vector<Ellipse> ellipse_cands;
#ifdef SUPRESS_LOC_MAX
    vector<size_t> loc_max_supression;
#endif
    vector<PixPos> edge_pixel_colind;
    vector<PixPos> edge_pixel_start;

#ifdef ANGLE_WEIGHTED_VOTE
    static constexpr RType bin_size_arc_lenght{1};
    static constexpr size_t h_per_bin{10};
    vector<RType> angular_bins;
    size_t nb_angle_bins,nb_ratio_bins;
    void init_angular_bins();
    void add_next_arc_lenght_unit_paramet(RType minor, RType major,RType& cent_angle);
    size_t calculate_arclenght_bin(RType x_0, RType x_1,RType minor_major_ratio,RType major);
#ifdef PRECOMPUTE_DISTANCE
    vector<RType> distances;
    RType arclenght_bin_center_distance;
#endif
#endif
};

RType circumference(RType minor, RType major);
RType distance(const Ellipse& e1, const Ellipse& e2);

void render_ellypsis(const vector<Ellipse>& ellipsis, Mat& image,std::array<bool,3> channel = std::array<bool,3>{true,true,true});
template<typename VotesToColor>
void render_ellipsis(const vector<Ellipse>& ellipsis, Mat& image,VotesToColor votes_to_color);

#ifdef PRINT_ELLYPSE
std::string to_string(const Ellipse& e);
#endif
} //end namespace t_ellipse_detector
#include "impl/ellipse_detector_impl.h"
#endif // ELLIPSE_DETECTOR_H
