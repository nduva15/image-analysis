//
//  ZhawImgMergerWrapper.m
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import "ZhawImgMergerWrapper.h"
#import "DumpPatchObjC.h"
#import "AquisitionParameters.h"
#import "EllipticalHoughParameterC.h"
#include <opencv2/imgcodecs/ios.h>
#include "zhaw_imgmerger.h"
    
@interface ZhawImgMergerWrapper()

@property ZHAW_ImgMerger imageMerger;
@property cv::Mat imgMat;
@property cv::Mat imgDetail;
@property cv::Mat vfImg;
@property cv::Mat ovImg;
@property cv::Mat dtImg;
@property double ellipseDiameter;
@property NSMutableArray *xyPoints;
@property UIImage* globalImage;
@property DumpPatch globalVector;

@end

@implementation ZhawImgMergerWrapper

- (void)initZhawImgMerger
{
    
}

- (void)setOverviewImage:(UIImage*) image
{
    //Transform to Mat
    UIImageToMat(image, _imgMat);
    cvtColor(_imgMat, _ovImg, COLOR_RGBA2RGB);
//    cvtColor(_ovImg, _imgMat, COLOR_BGR2RGB);
    //TODO: send Overview picture from opencv to swift
    _imageMerger.set_overview_image(_ovImg);
    _imageMerger.compute_overview_features();
}

- (NSMutableArray *)getCoinImages {
    _imageMerger.detect_coins_on_overview();
    NSMutableArray *coinImages = [NSMutableArray new];
    vector<Mat> vector = _imageMerger.get_coin_candidates_redered();
    
    for (int i = 0; i< vector.size(); i++) {
//        cv::Mat bgr_image = vector[i];
//        cvtColor(vector[i], bgr_image, COLOR_BGR2RGB);
        UIImage* image = MatToUIImage(vector[i]);
        [coinImages addObject:image];
    }
    return coinImages;
}

-(NSMutableArray *) getPointsCoordinates
{
    return _xyPoints;
}

- (void) setOverviewResolution:(double)coinDiameter withCanditateIndex:(int)candIndex
{
    double coinRadius = _imageMerger.get_coin_radius(candIndex);
    _ellipseDiameter = coinRadius*2;
    double overviewImageResolution = _ellipseDiameter/coinDiameter;
    _imageMerger.set_resolution_overview(overviewImageResolution);
}

- (UIImage *)getVisualFeedback
{
    cvtColor(_imageMerger.get_visual_feedback(), _vfImg, COLOR_BGR2RGB);
    return MatToUIImage(_vfImg);
}

- (BOOL) addDetailImage:(UIImage*) detailImg
{
    UIImageToMat(detailImg, _imgDetail);
    cvtColor(_imgDetail, _dtImg, COLOR_RGBA2RGB);
    return _imageMerger.add_detail_image(_dtImg);
}

- (BOOL) overviewIsPrepared
{
    return _imageMerger.overview_is_prepared();
}

-(int) getTotalMiniAreas
{
    return (int)_imageMerger.nb_mini_areas();
}

-(int) getTotalGoodMiniAreas
{
    return 0;
//    return _imageMerger.get_total_mini_areas_good();
}

-(DumpPatchObjC *) getSingleDumbPath:(int) index
{
    if (index == 0) {
        DumpPatch patch = _imageMerger.single_patch_to_store(index);
        cv::Mat bgr_image = patch.image;
        cvtColor(patch.image, bgr_image, COLOR_BGR2RGB);
        string meta_data = patch.meta_data;
        string file_name = patch.file_name;
        NSString *metaData = [NSString stringWithCString:meta_data.c_str()
                                                    encoding:[NSString defaultCStringEncoding]];
        NSString *fileName = [NSString stringWithCString:file_name.c_str()
                                                    encoding:[NSString defaultCStringEncoding]];
        return [[DumpPatchObjC alloc] initWithImage:MatToUIImage(bgr_image)
                                                             metaData:metaData
                                                              fileName:fileName];
    }
    DumpPatch patch = _imageMerger.single_patch_to_store(index);
    string meta_data = patch.meta_data;
    string file_name = patch.file_name;
    NSString *metaData = [NSString stringWithCString:meta_data.c_str()
                                                encoding:[NSString defaultCStringEncoding]];
    NSString *fileName = [NSString stringWithCString:file_name.c_str()
                                                encoding:[NSString defaultCStringEncoding]];
    return [[DumpPatchObjC alloc] initWithImage:MatToUIImage(patch.image)
                                                         metaData:metaData
                                                          fileName:fileName];

}

-(NSMutableArray *) getDataToStore:(int)available_ram
{
    NSMutableArray *dataToStore = [NSMutableArray new];
//    vector<DumpPatch> vector = _imageMerger.mini_areas_to_store();
    vector<DumpPatch> vector = _imageMerger.mini_areas_to_store(available_ram);
    for (DumpPatch dump: vector) {
        string meta_data = dump.meta_data;
        string file_name = dump.file_name;
        NSString *metaData = [NSString stringWithCString:meta_data.c_str()
                                                encoding:[NSString defaultCStringEncoding]];
        NSString *fileName = [NSString stringWithCString:file_name.c_str()
                                                encoding:[NSString defaultCStringEncoding]];
        DumpPatchObjC *data = [[DumpPatchObjC alloc] initWithImage:MatToUIImage(dump .image)
                                                         metaData:metaData
                                                          fileName:fileName];
        [dataToStore addObject:data];
    }
    return dataToStore;
}


-(AquisitionParameters *) getAquisitionParameters
{
//    AquisitionParameter params;
//    _imageMerger.get_aquisition_parameter(params);
//    AquisitionParameters *returnParams = [[AquisitionParameters alloc] initWithMinimalSharpness:params.minimal_sharpness
//                                                                              minimalResolution:params.minimal_resolution
//                                                                                 emptyThreshold:params.empty_threshold
//                                                                        detailCenterCutFraction:params.detail_center_cut_fraction
//                                                                    minimalAvailableRamBytesize:0.0];
//    return returnParams;
    
    AquisitionParameter params;
    _imageMerger.get_acquisition_parameter(params);
    AquisitionParameters *returnParams = [[AquisitionParameters alloc] initWithMinimalSharpness:params.minimal_sharpness
                                                                              minimalResolution:params.minimal_resolution
                                                                                 emptyThreshold:params.empty_threshold
                                                                        detailCenterCutFraction:params.detail_center_cut_fraction
                                                                    minimalAvailableRamBytesize:params.minimal_available_ram_bytesize];
    return returnParams;
}

-(void) setAquisitionParameters:(AquisitionParameters*) params
{
//    AquisitionParameter setParams;
//    setParams.minimal_sharpness = params.minimalSharpness;
//    setParams.minimal_resolution = params.minimalResolution;
//    setParams.empty_threshold = params.emptyThreshold;
//    setParams.detail_center_cut_fraction = params.detailCenterCutFraction;
//    _imageMerger.set_aquisition_parameter(setParams);
    
    AquisitionParameter setParams;
    setParams.minimal_sharpness = params.minimalSharpness;
    setParams.minimal_resolution = params.minimalResolution;
    setParams.empty_threshold = params.emptyThreshold;
    setParams.detail_center_cut_fraction = params.detailCenterCutFraction;
    setParams.minimal_available_ram_bytesize = params.minimalAvailableRamBytesize;
    _imageMerger.set_acquisition_parameter(setParams);
}

-(void) readParameterCoin:(EllipticalHoughParameterC *) params
{
        EllipseDetectorParameter setParams;
//    EllipticalHoughParameter setParams;
    setParams.max_major = params.maxMajor;
    setParams.min_distance = params.minDistance;
    setParams.min_votes = params.minVotes;
    setParams.min_major = params.minMajor;
    setParams.min_minor_major_ratio = params.minMinorMajorRatio;
    setParams.nb_candidates = params.nbCandidates;
    setParams.major_groth_step_radius = params.majorGrothStepRadius;
    setParams.accumulator_bin_size = params.accumulatorBinSize;
    setParams.max_bridge_radius = params.maxBridgeRadius;
    setParams.max_bridges = params.maxBridges;
    setParams.canny_lower_gradient_threshold = params.cannyLowerGradientThreshold;
    setParams.canny_upper_to_lower_gradient_threshold_ratio = params.cannyUpperToLowerGradientThresholdRatio;
    setParams.major_sample_fraction = params.majorSampleFraction;
    setParams.blur_size = params.blurSize;
    _imageMerger.read_parameter_coin(setParams);
}

-(void) readParameterCoinRefine:(EllipticalHoughParameterC *) params
{
    EllipseDetectorParameter setParams;
//    EllipticalHoughParameter setParams;
    setParams.max_major = params.maxMajor;
    setParams.min_distance = params.minDistance;
    setParams.min_votes = params.minVotes;
    setParams.min_major = params.minMajor;
    setParams.min_minor_major_ratio = params.minMinorMajorRatio;
    setParams.nb_candidates = params.nbCandidates;
    setParams.major_groth_step_radius = params.majorGrothStepRadius;
    setParams.accumulator_bin_size = params.accumulatorBinSize;
    setParams.max_bridge_radius = params.maxBridgeRadius;
    setParams.max_bridges = params.maxBridges;
    setParams.canny_lower_gradient_threshold = params.cannyLowerGradientThreshold;
    setParams.canny_upper_to_lower_gradient_threshold_ratio = params.cannyUpperToLowerGradientThresholdRatio;
    setParams.major_sample_fraction = params.majorSampleFraction;
    setParams.blur_size = params.blurSize;
    _imageMerger.read_parameter_coin_refine(setParams);
}

-(void) readParameterMite:(EllipticalHoughParameterC *) params
{
    EllipseDetectorParameter setParams;
//    EllipticalHoughParameter setParams;
    setParams.max_major = params.maxMajor;
    setParams.min_major = params.minMajor;
    setParams.min_distance = params.minDistance;
    setParams.min_votes = params.minVotes;
    setParams.min_minor_major_ratio = params.minMinorMajorRatio;
    setParams.max_minor_major_ratio = params.maxMinorMajorRatio;
    setParams.nb_candidates = params.nbCandidates;
    setParams.accumulator_bin_size = params.accumulatorBinSize;
    setParams.major_groth_step_radius = params.majorGrothStepRadius;
    setParams.max_bridge_radius = params.maxBridgeRadius;
    setParams.max_bridges = params.maxBridges;
    setParams.ratio_bin_size = params.ratioBinSize;
    setParams.canny_lower_gradient_threshold = params.cannyLowerGradientThreshold;
    setParams.canny_upper_to_lower_gradient_threshold_ratio = params.cannyUpperToLowerGradientThresholdRatio;
    setParams.major_sample_fraction = params.majorSampleFraction;
    setParams.major_max_shrink_factor = params.majorMaxShrinkFactor;
    setParams.guided_eps = params.guidedEps;
    setParams.guided_radius = params.guidedRadius;
//    _imageMerger.read_parameter_mite(setParams);
}

-(NSString *) getLogString
{
    return [NSString stringWithUTF8String:_imageMerger.log_string().c_str()];
}


@end

