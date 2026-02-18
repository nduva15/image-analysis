#ifndef ZHAW_IMAGE_H
#define ZHAW_IMAGE_H

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/calib3d.hpp>
#include "config_vatorex.h"

using namespace cv;
using namespace std;

class ZHAW_Image
{
public:
    ZHAW_Image();
    ZHAW_Image(Mat imgData);
    void setImageData(Mat imgData);
    std::string image_name;
    bool isSet;
    bool foundHomography;
    Mat imgData;
    Mat H_to_Overview;
    double scaleFactor;
    double resolution;
    vector<KeyPoint> keypoints;
    Mat descriptors;
};

enum MiniAreaState
{
    SHARPENESS_OK_RESOLUTION_OK,
    SHARPENESS_NOK_RESOLUTION_OK,
    SHARPENESS_OK_RESOLUTION_NOK,
    SHARPENESS_NOK_RESOLUTION_NOK,
    EMPTY
};

struct MiniArea
{
    MiniArea()
        :sharpeness{0}
        ,resolution{0}
        ,is_empty{false}
        ,is_dumped{false}
    {}
    bool has_image() const {return !image.empty();}
    Mat image;
    Mat H_to_overview,H_to_overview_inv;
    Point2f shift;
    double sharpeness;
    double resolution;
    bool is_empty;
    bool is_dumped;
#if defined(BUILD_DEV_GUI_ACTIVE) or defined(BUILD_CANDIATE_COLLECTOR)
    std::string detail_image_name;
#endif
};

#endif // ZHAW_IMAGE_H
