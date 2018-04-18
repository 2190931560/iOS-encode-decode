//
//  VideoDecoder.h
//  ViralMouseClient
//
//  Created by Ximmerse on 2018/3/30.
//  Copyright © 2018年 leng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyGLLayer.h"

@interface VideoDecoder : NSObject
@property(nonatomic,weak)MyGLLayer *glLayer;

+(instancetype)share;

-(void)decodeBuffer:(char*)buffer length:(long)size;

@end
