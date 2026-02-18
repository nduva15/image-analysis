//
//  DumpPatchObjC.h
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DumpPatchObjC : NSObject

@property (nonatomic) UIImage* image;
@property (nonatomic) NSString* metaData;
@property (nonatomic) NSString* fileName;

- (instancetype)initWithImage:(UIImage *)image
                     metaData:(NSString *)metaData
                     fileName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
