//
//  YBMapButton.m
//  Kergou
//
//  Created by 王迎博 on 16/2/23.
//  Copyright © 2016年 张帅. All rights reserved.
//

#import "YBMapButton.h"


#define ButtonW 60 //button的宽
#define ButtonH 40 //button的高

@implementation YBMapButton

- (instancetype)initCustomButton:(NSString *)pictureNormal selectedPic:(NSString *)pictureSelected cornerPoint:(CGPoint)point showStr:(NSString *)showString
{
    if (self = [super init])
    {
        self.frame = CGRectMake(point.x-ButtonW/2, point.y-ButtonH, ButtonW, ButtonH);
        [self setBackgroundImage:[UIImage imageNamed:pictureNormal] forState:UIControlStateNormal];
        //button.selected=!button.selected 这句话写在button的点击事件里面
        [self setBackgroundImage:[UIImage imageNamed:pictureSelected] forState:UIControlStateSelected];

        self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 10, 0);
        [self setTitle:showString forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    }
    
    return self;
}

@end
