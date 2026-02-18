//
//  AquisitionParameters.h
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AquisitionParameters : NSObject

@property (nonatomic) double minimalSharpness;
@property (nonatomic) double minimalResolution;
@property (nonatomic) double emptyThreshold;
@property (nonatomic) double detailCenterCutFraction;
@property (nonatomic) double minimalAvailableRamBytesize;

- (instancetype)initWithMinimalSharpness:(double )minimalSharpness
                       minimalResolution:(double )minimalResolution
                          emptyThreshold:(double )emptyThreshold
                 detailCenterCutFraction:(double )detailCenterCutFraction
             minimalAvailableRamBytesize:(double )minimalAvailableRamBytesize;

@end

NS_ASSUME_NONNULL_END
