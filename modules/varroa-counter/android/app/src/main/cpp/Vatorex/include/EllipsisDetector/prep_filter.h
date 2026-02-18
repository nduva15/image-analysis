#ifndef PREP_FILTER_H
#define PREP_FILTER_H

#include "config_ellipsis_detector.h"
#include "opencv2/imgproc.hpp"
#include "opencv2/ximgproc.hpp"

namespace t_ellipse_detector
{
using namespace cv;

struct ConvertGray
{
    inline void operator()(InputArray input,OutputArray output)
    {
        CV_Assert(input.depth() == CV_8U);
        cvtColor(input,output,COLOR_BGR2GRAY);
        CV_Assert(output.channels() == 1);
    }
};

class ConvertGrayBlur
{
public:
    ConvertGrayBlur(size_t size)
        :size{size}
    {}
    inline void operator()(InputArray input,OutputArray output)
    {
        CV_Assert(input.depth() == CV_8U);
        cvtColor(input,tmp,COLOR_BGR2GRAY);
        blur(tmp, output, Size(size,size));
        CV_Assert(output.channels() == 1);
    }
private:
    size_t size;
    Mat tmp;
};

class ConvertHSVExtractBlur
{
public:
    ConvertHSVExtractBlur(size_t size,int channel)
        :size{size}
        ,channel{channel}
    {}
    inline void operator()(InputArray input,OutputArray output)
    {
        CV_Assert(input.depth() == CV_8U);
        cvtColor(input,tmp,cv::COLOR_BGR2HLS);
        extractChannel(tmp, tmp, channel);
        blur(tmp, output, Size(size,size));
        CV_Assert(output.channels() == 1);
    }
private:
    size_t size;
    int channel;
    Mat tmp;
};

class ConvertGrayGuided
{
public:
    ConvertGrayGuided(int radius,double eps)
        :radius{radius}
        ,eps{eps}
    {}
    inline void operator()(InputArray input,OutputArray output)
    {
        CV_Assert(input.depth() == CV_8U);
        cv::ximgproc::guidedFilter(input,input,tmp,radius,eps);
        cvtColor(tmp,output,COLOR_BGR2GRAY);
        CV_Assert(output.channels() == 1);
    }
private:
    int radius;
    double eps;
    Mat tmp;
};

class ConvertGrayBilateral
{
public:
    ConvertGrayBilateral(double sigma_space,double sigma_color)
        :sigma_space{sigma_space}
        ,sigma_color{sigma_color}
    {}
    inline void operator()(InputArray input,OutputArray output)
    {
        CV_Assert(input.depth() == CV_8U);
        bilateralFilter(input,tmp,5,sigma_color,sigma_space);
        cvtColor(tmp,output,COLOR_BGR2GRAY);
        CV_Assert(output.channels() == 1);
    }
private:
    double sigma_space,sigma_color;
    Mat tmp;
};

}//end namespace t_ellipse_detector
//cv::ximgproc::anisotropicDiffusion

#endif // PREP_FILTER_H
