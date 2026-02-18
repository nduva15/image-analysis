#ifndef ELLIPSE_DETECTOR_IMPL_H
#define ELLIPSE_DETECTOR_IMPL_H

#include "ellipse_detector.h"
#ifdef MEASURE_TIME
#include <iostream>
#endif

namespace t_ellipse_detector
{

inline RType Ellipse::major_size() const
{
    return std::sqrt(a_0*a_0+a_1*a_1);
}

inline RType Ellipse::value(RType x_0, RType x_1) const
{
    return coeffs[0]*x_0*x_0+coeffs[1]*x_0*x_1+coeffs[2]*x_1*x_1+coeffs[3]*x_0+coeffs[4]*x_1+coeffs[5];
}

inline const vector<Ellipse>& EllipseDetectorBase::ellipse_candidates() const
{
    return ellipse_cands;
}

inline void EllipseDetectorBase::sort_candidates()
{
    std::sort(ellipse_cands.begin(),ellipse_cands.end(),[](const Ellipse& a, const Ellipse& b){return a.votes > b.votes;});
}

inline const EllipseDetectorParameter& EllipseDetectorBase::params()
{
    return parameter;
}

inline void EllipseDetectorBase::set_parameter(EllipseDetectorParameter parameter)
{
    this->parameter = std::move(parameter);
#ifdef ANGLE_WEIGHTED_VOTE
    init_angular_bins();
#endif
}

#ifdef CENTER_SEED
inline bool find_nearby_edges(PixPos& row, PixPos& col, const PixPos row_step, const PixPos col_step, const size_t max_radius, const Mat& edge_image)
{
    const PixType* raw_im{edge_image.ptr<PixType>(0)};
    const PixPos nb_rows{edge_image.rows};
    const PixPos nb_cols{edge_image.cols};
    for(size_t rad = 0; rad < max_radius; ++rad)
    {
        if(raw_im[row*nb_cols+col])
            return true;
        row += row_step;
        col += col_step;
        if((row < 0) | (row >= nb_rows) | (col < 0) | (col >= nb_cols))
            return false;
    }
    return false;
}
#endif

template<class Filter>
void EllipseDetectorBase::extract_ellipsis(const Mat& input_image,Filter filter)
{
    CV_Assert(input_image.depth() == CV_8U);
    filter(input_image,edges);
    CV_Assert(edges.channels() == 1);

#if defined(MEASURE_TIME) | defined(MAX_TIME)
    auto t0 = std::chrono::high_resolution_clock::now();
#endif
    Canny(edges,edges,parameter.canny_lower_gradient_threshold,parameter.canny_lower_gradient_threshold*parameter.canny_upper_to_lower_gradient_threshold_ratio,parameter.canny_sobel_aperture_size);
#ifdef MEASURE_TIME
    auto t1 = std::chrono::high_resolution_clock::now();
#endif
    build_crs_edge();
    ellipse_cands.clear();
    extract_ellipsis_int();
#ifdef MEASURE_TIME
    auto t2 = std::chrono::high_resolution_clock::now();
    double time = (double(std::chrono::duration_cast<std::chrono::nanoseconds>(t2-t1).count())* 1e-9);
    std::cout << "time used without canny= " << std::scientific << time << std::endl;
    double time2 = (double(std::chrono::duration_cast<std::chrono::nanoseconds>(t2-t0).count())* 1e-9);
    std::cout << "total time used= " << std::scientific << time2 << std::endl;
#endif
}

inline RType distance(const Ellipse& e1,const Ellipse& e2)
{
    const RType major_1_s{(e1.a_0*e1.a_0+e1.a_1*e1.a_1)};
    const RType f1{std::sqrt(1-e1.minor*e1.minor/major_1_s)};
    const RType major_2_s{(e2.a_0*e2.a_0+e2.a_1*e2.a_1)};
    const RType f2{std::sqrt(1-e2.minor*e2.minor/major_2_s)};
    return std::sqrt(std::pow(RType(e1.z_0)-RType(e2.z_0),2)+std::pow(RType(e1.z_1)-RType(e2.z_1),2)
                    +std::min(std::pow(f1*e1.a_0-f2*e2.a_0,2)+std::pow(f1*e1.a_1-f2*e2.a_1,2),std::pow(f1*e1.a_0+f2*e2.a_0,2)+std::pow(f1*e1.a_1+f2*e2.a_1,2))
                    +std::pow(std::sqrt(major_1_s)-std::sqrt(major_2_s),2));
}

inline RType circumference(RType minor, RType major)
{
    return pi*(RType(3)*(minor+major)-std::sqrt(RType(10)*major*minor+RType(3)*(std::pow(minor,2)+std::pow(major,2))));
}

#ifdef ANGLE_WEIGHTED_VOTE
inline void EllipseDetectorBase::add_next_arc_lenght_unit_paramet(RType minor_s, RType major_s,RType& param)
{
    assert(-pi<= param);
    assert(param <= pi);
    constexpr RType h{bin_size_arc_lenght/RType(h_per_bin)};
    for(size_t k = 0; k < h_per_bin; ++k) //euler integrate arc-lenght ode
        param += h/std::sqrt(major_s*std::pow(std::sin(param),2)+minor_s*std::pow(std::cos(param),2));
}

inline size_t EllipseDetectorBase::calculate_arclenght_bin(RType x_0, RType x_1,RType minor_major_ratio,RType major)
{
    assert(minor_major_ratio <= parameter.max_minor_major_ratio);
    const size_t ratio_bin{size_t((minor_major_ratio-parameter.min_minor_major_ratio)/parameter.ratio_bin_size)};
    const size_t offset{ratio_bin*nb_angle_bins};
    const RType major_scale{major/parameter.max_major};//scale max angular_bin to circumference with major_axis major.
    const size_t nb_quarter_bins{size_t(angular_bins[offset+nb_angle_bins-1]*major_scale+0.5)};
    assert(offset+nb_angle_bins <= angular_bins.size());

    size_t angular_bin{0};
    if(std::abs(x_0) < std::numeric_limits<RType>::min())
    {
    #ifdef PRECOMPUTE_DISTANCE
        arclenght_bin_center_distance = distances[offset+nb_angle_bins-1]*major_scale;
    #endif
        if(x_1 > 0)
            return 3*nb_quarter_bins - 1 + size_t(x_0 < 0);
        return nb_quarter_bins-1 + size_t(x_0 > 0);
    }
    const RType tan_central_angle{std::abs(x_1)/std::abs(x_0)};
#define BIN_SEARCH 1
#ifdef BIN_SEARCH
    auto upper = std::upper_bound(angular_bins.begin()+offset, angular_bins.begin()+offset+angular_bins[offset+nb_angle_bins-1], tan_central_angle);
    angular_bin = std::distance(angular_bins.begin()+offset, upper);
#else
    while(angular_bins[offset+angular_bin] < tan_central_angle)
        ++angular_bin;
#endif
#ifdef PRECOMPUTE_DISTANCE
    arclenght_bin_center_distance = distances[offset+angular_bin]*major_scale;
#endif
    angular_bin = size_t(RType(angular_bin)*major_scale);
    if(x_0 > 0)
    {
        if(x_1 >= 0)
            return angular_bin+2*nb_quarter_bins;
        return 2*nb_quarter_bins-1-angular_bin;
    }
    if(x_0 < 0)
    {
        if(x_1 >= 0)
            return 4*nb_quarter_bins-1-angular_bin;
    }
    return angular_bin;
}
#endif

template<typename VotesToColor>
void render_ellipsis(const vector<Ellipse>& ellipsis, Mat& image, VotesToColor votes_to_color)
{
    constexpr RType two_pi{RType(2)*pi};
    for(std::size_t k = 0, end = ellipsis.size(); k < end; ++k)
    {
        if(ellipsis[k].votes == 0)
            continue;
        const RType major_size{std::sqrt(std::pow(ellipsis[k].a_0,2)+std::pow(ellipsis[k].a_1,2))};
        const RType angle{std::atan2(ellipsis[k].a_1,ellipsis[k].a_0)/two_pi*RType(360)};
        const Scalar color{votes_to_color(ellipsis[k].votes)};
        ellipse(image,Point(ellipsis[k].z_0,ellipsis[k].z_1),Size(major_size,ellipsis[k].minor),angle,0,360,color,2);
        circle(image,Point(ellipsis[k].z_0,ellipsis[k].z_1),2,color,FILLED,LINE_8 );
    }
}
} //end namespace t_ellipse_detector
#endif // ELLIPSE_DETECTOR_IMPL_H
