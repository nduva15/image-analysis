#ifndef PARAMETER_H
#define PARAMETER_H

#include "config_ellipsis_detector.h"
#include <cstdint>
#include <cassert>
#ifdef PARAMETER_READER_SUPPORT
#include "ParameterFileReader/parameter_file_reader.h"
#endif

namespace t_ellipse_detector
{

using PixType = std::uint8_t;
using PixPos = int_fast32_t;
using RType = double;

#ifdef PARAMETER_READER_SUPPORT
using namespace parameter_reader;

// start keep consistent
class EllipseDetectorParameter
{
public:
    using ValueType = std::tuple<RType,int,std::uint8_t,std::size_t,PixPos>;
    static constexpr size_t nb_a_sizes{std::tuple_size<ValueType>::value-1};
    static constexpr std::array<size_t,nb_a_sizes+1> sizes{1,1,1,1,1};
    static constexpr std::array<size_t,nb_a_sizes+1> nb_parameter{
        8
    #ifdef SUPRESS_LOC_MAX
        +1
    #endif
    #ifdef ANGLE_WEIGHTED_VOTE
        +1
    #endif
    #ifdef FILTER_PARAMETER
        +4
    #endif
    #ifdef SHRINK_MAJOR
        +1
    #endif
        ,1
    #ifdef FILTER_PARAMETER
        +1
    #endif
        ,4
        ,1
    #ifdef MAX_TIME
        +1
    #endif
        ,0
    #ifdef CENTER_SEED
        +1
    #endif
    };

    EllipseDetectorParameter();

    union
    {
        struct
        {
            TupleElement<0,ValueType> canny_lower_gradient_threshold; //see cv canny
            TupleElement<0,ValueType> canny_upper_to_lower_gradient_threshold_ratio; //used to compute upper_gradient_threshold see cv canny
            TupleElement<0,ValueType> min_major,max_major; //constaint on target ellipse: minimum major axis size and maximum major axis size in pixel
            TupleElement<0,ValueType> min_minor_major_ratio,max_minor_major_ratio; //constraint on target ellipse: minor/major ratio
        #ifdef SUPRESS_LOC_MAX
            TupleElement<0,ValueType> min_distance; //constraint on target ellipsis: minimum distance between centers,major axis and minor lenght in pixel (stronger voted candidate does supress closer candidate)
        #endif
            TupleElement<0,ValueType> min_votes;  //minimal vote required to be a valid ellipse candidate
            TupleElement<0,ValueType> major_sample_fraction; //number of sampled seed for major axis search equals number of detected edges times major_sample_fraction
        #ifdef ANGLE_WEIGHTED_VOTE
            TupleElement<0,ValueType> ratio_bin_size; //size of the minor to major ratio bins used to calculate angular voting bins
        #endif
        #ifdef FILTER_PARAMETER
            TupleElement<0,ValueType> blur_size;
            TupleElement<0,ValueType> guided_eps;
            TupleElement<0,ValueType> bilateral_sigma_space,bilateral_sigma_color;
        #endif
        #ifdef SHRINK_MAJOR
            TupleElement<0,ValueType> major_max_shrink_factor;
        #endif
        };
        TupleElement<0,ValueType> arr[nb_parameter[0]*sizes[0]];
    };
    union
    {
        struct
        {
            TupleElement<1,ValueType> canny_sobel_aperture_size; //see cv canny
        #ifdef FILTER_PARAMETER
            TupleElement<1,ValueType> guided_radius;
        #endif
        };
        TupleElement<1,ValueType> arr_1[nb_parameter[1]*sizes[1]];
    };
    union
    {
        struct
        {
            TupleElement<2,ValueType> accumulator_bin_size; //minor axis size of minor axis discretization (i.e. measure of alowed irregularity of ellipse shape)
            TupleElement<2,ValueType> major_groth_step_radius; //pixel search radius for growing major axis (connected);
            TupleElement<2,ValueType> max_bridges; //max number of times jumps for growing major axis can be used
            TupleElement<2,ValueType> max_bridge_radius; //maximum jump radius
        };
        TupleElement<2,ValueType> arr_2[nb_parameter[2]*sizes[2]];
    };
    union
    {
        struct
        {
            TupleElement<3,ValueType> nb_candidates; //number of candidates to report (strongest voted are reported)
        #ifdef MAX_TIME
            TupleElement<3,ValueType> max_time; //maximum allowed cpu time in millisecs
        #endif
        };
        TupleElement<3,ValueType> arr_3[nb_parameter[3]*sizes[3]];
    };
    union
    {
        struct
        {
        #ifdef CENTER_SEED
            TupleElement<4,ValueType> seed_row,seed_col; //guess seed for first major search
        #endif
        };
        TupleElement<4,ValueType> arr_4[nb_parameter[4]*sizes[4]];
    };
private:
    template<typename Pars>
    friend bool parameter_reader::set_parameter_value(Pars& pars,std::string& key, const std::string& val);
    inline std::array<void*,nb_a_sizes+1> a_ptr()
    {
        return{&arr[0],&arr_1[0],&arr_2[0],&arr_3[0],&arr_4[0]};
    }
    static const std::map<std::string,parameter_reader::Location> parameter_map;
};

const std::array<std::vector<std::string>,EllipseDetectorParameter::nb_a_sizes+1> par_names
{{
{
    "canny_lower_gradient_threshold",
    "canny_upper_to_lower_gradient_threshold_ratio",
    "min_major","max_major",
    "min_minor_major_ratio","max_minor_major_ratio",
#ifdef SUPRESS_LOC_MAX
    "min_distance",
#endif
    "min_votes",
    "major_sample_fraction",
#ifdef ANGLE_WEIGHTED_VOTE
    "ratio_bin_size",
#endif
#ifdef FILTER_PARAMETER
    "blur_size",
    "guided_eps",
    "bilateral_sigma_space","bilateral_sigma_color",
#endif
#ifdef SHRINK_MAJOR
    "major_max_shrink_factor"
#endif
},{
    "canny_sobel_aperture_size",
#ifdef FILTER_PARAMETER
    "guided_radius",
#endif
},{
    "accumulator_bin_size",
    "major_groth_step_radius",
    "max_bridges",
    "max_bridge_radius",
},{
    "nb_candidates",
#ifdef MAX_TIME
    "max_time",
#endif
},{
#ifdef CENTER_SEED
    "seed_row,seed_col",
#endif
}
}};
//end keep consistent
#else
struct EllipseDetectorParameter
{
    EllipseDetectorParameter();
    RType canny_lower_gradient_threshold; //see cv canny
    RType canny_upper_to_lower_gradient_threshold_ratio; //used to compute upper_gradient_threshold see cv canny
    int canny_sobel_aperture_size; //see cv canny
    RType min_major,max_major; //constaint on target ellipse: minimum major axis size and maximum major axis size in pixel
    RType min_minor_major_ratio,max_minor_major_ratio; //constraint on target ellipse: minor/major ratio
#ifdef SUPRESS_LOC_MAX
    RType min_distance; //constraint on target ellipsis: minimum distance between centers,major axis and minor lenght in pixel (stronger voted candidate does supress closer candidate)
#endif
    std::uint8_t accumulator_bin_size; //measure of alowed irregularity of ellipse shape
    size_t nb_candidates; //number of candidates to report (strongest voted are reported)
    RType min_votes;  //minimal vote required to be a valid ellipse candidate
    RType major_sample_fraction; //number of sampled seed for ellipse seed search equals number of detected edges times major_sample_fraction
    std::uint8_t major_groth_step_radius; //pixel radius for growing major axis;
    std::uint8_t max_bridges; //max number of times jumps for growing major axis can be used
    std::uint8_t max_bridge_radius; //maximum jump radius
#ifdef MAX_TIME
    size_t max_time; //maximum allowed cpu time in millisecs
#endif
#ifdef CENTER_SEED
    PixPos seed_row,seed_col; //guess seed for first major search
#endif
#ifdef ANGLE_WEIGHTED_VOTE
    RType ratio_bin_size; //size of the minor to major ratio bins used to calculate angular voting bins
#endif
#ifdef FILTER_PARAMETER
    RType blur_size;
    int guided_radius;
    RType guided_eps;
    RType bilateral_sigma_space,bilateral_sigma_color;
#endif
#ifdef SHRINK_MAJOR
    RType major_max_shrink_factor;
#endif
};
#endif
}

#endif // PARAMETER_H
