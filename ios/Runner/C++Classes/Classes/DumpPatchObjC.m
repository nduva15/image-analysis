//
//  DumpPatchObjC.m
//  Runner
//
//  Created by Joaquin Blanco Claure on 20.07.22.
//

#import "DumpPatchObjC.h"

@implementation DumpPatchObjC

- (instancetype)initWithImage:(UIImage *)image metaData:(NSString *)metaData fileName:(NSString *)fileName {
    
    if (self = [super init]) {
        _image = image;
        _metaData = metaData;
        _fileName = fileName;
    }
    return self;
}

@end
