//
//  ViewController.m
//  testSelectedButton
//
//  Created by 王迎博 on 16/2/23.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"
#import "YBMapButton.h"


@interface ViewController ()
@property (nonatomic, strong) UIButton *lastBtn;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //把点放进数组中
    NSMutableArray *myPointArray = [[NSMutableArray alloc] init];
    // store
    CGPoint point0 = CGPointMake(100.0f, 100.0f);
    CGPoint point1 = CGPointMake(150.0f, 200.0f);
    CGPoint point2 = CGPointMake(190.0f, 88.0f);
    CGPoint point3 = CGPointMake(250.0f, 120.0f);
    CGPoint point4 = CGPointMake(300.0f, 150.0f);
    
    [myPointArray addObject:NSStringFromCGPoint(point0)];
    [myPointArray addObject:NSStringFromCGPoint(point1)];
    [myPointArray addObject:NSStringFromCGPoint(point2)];
    [myPointArray addObject:NSStringFromCGPoint(point3)];
    [myPointArray addObject:NSStringFromCGPoint(point4)];
    
    //button的名字
    NSArray *nameArr = @[@"美国",@"中国",@"法国",@"英国",@"俄国"];
    
    for (int i = 0; i < myPointArray.count; i ++)
    {
        // retrieve
        CGPoint retrievedPoint = CGPointFromString([myPointArray objectAtIndex:i]);
        NSString *showName = [nameArr objectAtIndex:i];
        
        //循环建button
        YBMapButton *countryBtn = [[YBMapButton alloc]initCustomButton:@"nor" selectedPic:@"sel" cornerPoint:retrievedPoint showStr:showName];
        [countryBtn setTag:i];
        [countryBtn setTagInt:i];
        if (i == 0)
        {
            //让第一个先被选中
            
            //方法一
//            countryBtn.selected = YES;
//            _lastBtn = countryBtn;
            //方法二
            [self changeData:countryBtn];
        }
        [countryBtn addTarget:self action:@selector(changeData:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:countryBtn];
    }
}


- (void)changeData:(YBMapButton *)sender
{
    NSLog(@".......%ld",(long)sender.tagInt);
    
    _lastBtn.selected = NO;
    sender.selected = YES;
    _lastBtn = sender;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
