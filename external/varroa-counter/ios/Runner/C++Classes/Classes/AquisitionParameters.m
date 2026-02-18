//
//  AquisitionParameters.m
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import "AquisitionParameters.h"

@implementation AquisitionParameters

-(instancetype)initWithMinimalSharpness:(double )minimalSharpness
                      minimalResolution:(double )minimalResolution
                         emptyThreshold:(double )emptyThreshold
                detailCenterCutFraction:(double )detailCenterCutFraction
            minimalAvailableRamBytesize:(double )minimalAvailableRamBytesize{
    
    if (self = [super init]) {
        _minimalSharpness = minimalSharpness;
        _minimalResolution = minimalResolution;
        _emptyThreshold = emptyThreshold;
        _detailCenterCutFraction = detailCenterCutFraction;
        _minimalAvailableRamBytesize = minimalAvailableRamBytesize;
    }
    return self;
    
}
@end
