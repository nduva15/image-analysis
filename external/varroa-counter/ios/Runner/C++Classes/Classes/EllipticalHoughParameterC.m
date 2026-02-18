//
//  EllipticalHoughParameterC.m
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import "EllipticalHoughParameterC.h"

@implementation EllipticalHoughParameterC

-(instancetype)initWithMaxMajor:(double )maxMajor
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
           majorMaxShrinkFactor:(double )majorMaxShrinkFactor {
    if (self = [super init]) {
        _maxMajor = maxMajor;
        _minDistance = minDistance;
        _minVotes = minVotes;
        _minMajor = minMajor;
        _minMinorMajorRatio = minMinorMajorRatio;
        _maxMinorMajorRatio = maxMinorMajorRatio;
        _nbCandidates = nbCandidates;
        _majorGrothStepRadius = majorGrothStepRadius;
        _accumulatorBinSize = accumulatorBinSize;
        _maxBridgeRadius = maxBridgeRadius;
        _maxBridges = maxBridges;
        _cannyLowerGradientThreshold = cannyLowerGradientThreshold;
        _cannyUpperToLowerGradientThresholdRatio = cannyUpperToLowerGradientThresholdRatio;
        _majorSampleFraction = majorSampleFraction;
        _blurSize = blurSize;
        _cannySobelApertureSize = cannySobelApertureSize;
        _ratioBinSize = ratioBinSize;
        _guidedRadius = guidedRadius;
        _guidedEps = guidedEps;
        _majorMaxShrinkFactor = majorMaxShrinkFactor;
    }
    return self;
}
@end

