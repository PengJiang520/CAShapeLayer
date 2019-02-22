//
//  CornView.h
//  Money
//
//  Created by 江鹏 on 2019/2/21.
//  Copyright © 2019 KaiCom. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CornView : UIView


/**
 * CALayer
 */
@property (nonatomic,strong) CALayer *indicateLayer;

-(void)refreshUIWithVoicePower : (NSInteger)voicePower;


@end

NS_ASSUME_NONNULL_END
