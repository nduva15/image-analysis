//
//  EllipticalHoughParameterC.h
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EllipticalHoughParameterC : NSObject

@property (nonatomic) double maxMajor;
@property (nonatomic) double minDistance;
@property (nonatomic) double minVotes;
@property (nonatomic) double minMajor;
@property (nonatomic) double minMinorMajorRatio;
@property (nonatomic) double maxMinorMajorRatio;
@property (nonatomic) double nbCandidates;
@property (nonatomic) double majorGrothStepRadius;
@property (nonatomic) double accumulatorBinSize;
@property (nonatomic) double maxBridgeRadius;
@property (nonatomic) double maxBridges;
@property (nonatomic) double cannyLowerGradientThreshold;
@property (nonatomic) double cannyUpperToLowerGradientThresholdRatio;
@property (nonatomic) double majorSampleFraction;
@property (nonatomic) double blurSize;
@property (nonatomic) double cannySobelApertureSize;
@property (nonatomic) double ratioBinSize;
@property (nonatomic) double guidedRadius;
@property (nonatomic) double guidedEps;
@property (nonatomic) double majorMaxShrinkFactor;

- (instancetype)initWithMaxMajor:(double )maxMajor
                     minDistance:(double )minDistance
                        minVotes:(double )minVotes
                        minMajor:(double )minMajor
              minMinorMajorRatio:(double )minMinorMajorRatio
              maxMinorMajorRatio:(double )maxMinorMajorRatio
                    nbCandidates:(double )nbCandidates
            majorGrothStepRadius:(double )majorGrothStepRadius
              accumulatorBinSize:(double )accumulatorBinSize
                 maxBridgeRadius:(double )maxBridgeRadius
                      maxBridges:(double )maxBridges
     cannyLowerGradientThreshold:(double )cannyLowerGradientThreshold
cannyUpperToLowerGradientThresholdRatio:(double )cannyUpperToLowerGradientThresholdRatio
             majorSampleFraction:(double )majorSampleFraction
                        blurSize:(double )blurSize
          cannySobelApertureSize:(double )cannySobelApertureSize
                    ratioBinSize:(double )ratioBinSize
                    guidedRadius:(double )guidedRadius
                       guidedEps:(double )guidedEps
            majorMaxShrinkFactor:(double )majorMaxShrinkFactor;

@end
NS_ASSUME_NONNULL_END

