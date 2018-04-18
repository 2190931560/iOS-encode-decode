//
//  ViewController.m
//  test
//
//  Created by leng on 2018/4/1.
//  Copyright © 2018年 leng. All rights reserved.
//

#import "ViewController.h"
#import "MyGLLayer.h"
#import "VideoDecoder.h"
#import "VideoEncoder.h"

@interface ViewController ()
@property(weak) MyGLLayer *glLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyGLLayer *layer = [[MyGLLayer alloc] initWithFrame:self.view.frame];
    [self.view.layer addSublayer:layer];
    self.glLayer = layer;
    [VideoDecoder share].glLayer = layer;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[VideoEncoder share] startEncode];
}

@end
