//
//  ViewController.h
//  Money
//
//  Created by 江鹏 on 2019/2/21.
//  Copyright © 2019 KaiCom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CornView.h"


@interface ViewController : UIViewController


/**
 * CornView
 */
@property (nonatomic,strong) CornView *cornView;


@property (nonatomic, strong)dispatch_source_t time;

@end

