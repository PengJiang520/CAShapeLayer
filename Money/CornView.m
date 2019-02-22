//
//  CornView.m
//  Money
//
//  Created by 江鹏 on 2019/2/21.
//  Copyright © 2019 KaiCom. All rights reserved.
//

#import "CornView.h"

@implementation CornView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        //[self setUserInteractionEnabled:NO];
        self.layer.borderWidth = 1;
        self.layer.cornerRadius = 50;
        self.clipsToBounds = YES;
    }
    return self;
}



-(void)refreshUIWithVoicePower : (NSInteger)voicePower {
    CGFloat height = (voicePower)*(CGRectGetHeight(self.frame)/10);
    //每次进来清掉上一次的layer
    [_indicateLayer removeFromSuperlayer];
    _indicateLayer = nil;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, CGRectGetHeight(self.frame)-height, CGRectGetWidth(self.frame), height) cornerRadius:0];
    
    CAShapeLayer *indicateLayer = [CAShapeLayer layer];
    indicateLayer.path = path.CGPath;
    indicateLayer.fillColor = [UIColor grayColor].CGColor;
    [self.layer addSublayer:indicateLayer];
    _indicateLayer = indicateLayer;
    
}



@end
