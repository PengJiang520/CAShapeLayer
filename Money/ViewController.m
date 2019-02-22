//
//  ViewController.m
//  Money
//
//  Created by 江鹏 on 2019/2/21.
//  Copyright © 2019 KaiCom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createCornView];
}

#pragma mark - 创建一个椭圆形View
- (void)createCornView {
    
    _cornView = [[CornView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
   
    _cornView.center = self.view.center;
  

    [self.view addSubview:_cornView];
    
    [self configTimer];
  
 
}



- (void)configTimer {
    __weak typeof(self) weakSelf = self;
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //创建一个定时器
    self.time = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //设置开始时间
    dispatch_time_t start = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC));
    //设置时间间隔
    uint64_t interval = (uint64_t)(0.5* NSEC_PER_SEC);
    //设置定时器
    dispatch_source_set_timer(self.time, start, interval, 0);
    //设置回调
    dispatch_source_set_event_handler(self.time, ^{
        double value=(double)arc4random()/0x100000000*10;
        NSLog(@"数字= %f",value);
        dispatch_async(dispatch_get_main_queue(), ^{
            [weakSelf.cornView refreshUIWithVoicePower :value];
        });
        
       
    });
    //由于定时器默认是暂停的所以我们启动一下
    //启动定时器
    dispatch_resume(self.time);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    
   

//    //_indicateLayer = nil;
//
//    //[self refreshUIWithVoicePower :1];
//
//    /** 创建定时器对象
//     * para1: DISPATCH_SOURCE_TYPE_TIMER 为定时器类型
//     * para2-3: 中间两个参数对定时器无用
//     * para4: 最后为在什么调度队列中使用
//     */
//    __weak typeof(self) weakSelf = self;
//
//   dispatch_source_t _gcdTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_global_queue(0, 0));
//    /** 设置定时器
//     * para2: 任务开始时间
//     * para3: 任务的间隔
//     * para4: 可接受的误差时间，设置0即不允许出现误差
//     * Tips: 单位均为纳秒
//     */
//    dispatch_source_set_timer(_gcdTimer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 0.0 * NSEC_PER_SEC);
//    /** 设置定时器任务
//     * 可以通过block方式
//     * 也可以通过C函数方式
//     */
//    dispatch_source_set_event_handler(_gcdTimer, ^{
//        double value=(double)arc4random()/0x100000000*10;
//        NSLog(@"数字= %f",value);
//        [weakSelf.cornView refreshUIWithVoicePower :value];
//    });
//    // 启动任务，GCD计时器创建后需要手动启动
//    dispatch_resume(_gcdTimer);
   

}






@end
