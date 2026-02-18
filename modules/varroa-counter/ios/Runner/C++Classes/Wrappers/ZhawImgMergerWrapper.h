//
//  ZhawImgMergerWrapper.h
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import <UIKit/UIKit.h>
#import "AquisitionParameters.h"
#import "EllipticalHoughParameterC.h"
#import "DumpPatchObjC.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZhawImgMergerWrapper : NSObject

-(void)initZhawImgMerger;
-(void)setOverviewImage:(UIImage*)image;
-(NSMutableArray *)getCoinImages;
-(void)setOverviewResolution:(double)coinDiameter withCanditateIndex:(int)candIndex;
-(BOOL)addDetailImage:(UIImage*)detailImg;
-(BOOL)overviewIsPrepared;
-(UIImage *)getVisualFeedback;
-(int) getTotalMiniAreas;
-(int) getTotalGoodMiniAreas;
-(NSMutableArray *) getPointsCoordinates;
-(DumpPatchObjC *) getSingleDumbPath:(int) index;
-(NSMutableArray *) getDataToStore:(int)available_ram;
-(AquisitionParameters *) getAquisitionParameters;
-(void) setAquisitionParameters:(AquisitionParameters*) params;
-(void) readParameterCoin:(EllipticalHoughParameterC *) params;
-(void) readParameterCoinRefine:(EllipticalHoughParameterC *) params;
-(void) readParameterMite:(EllipticalHoughParameterC *) params;
-(NSString *) getLogString;
@end

NS_ASSUME_NONNULL_END
