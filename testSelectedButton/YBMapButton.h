//
//  YBMapButton.h
//  Kergou
//
//  Created by 王迎博 on 16/2/23.
//  Copyright © 2016年 张帅. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBMapButton : UIButton
{
    
}

@property (nonatomic) NSInteger tagInt;
@property (nonatomic) BOOL isLastButton;
/**
 *  自定义地图上的按钮
 *
 *  @param pictureNormal   普通状体按钮图片名
 *  @param pictureSelected 选中状态图片名
 *  @param point           尖角指向的点
 *  @param showString      button上的文字
 *
 *  @return 返回一个自定义的button
 */
- (instancetype)initCustomButton:(NSString *)pictureNormal selectedPic:(NSString *)pictureSelected cornerPoint:(CGPoint)point showStr:(NSString *)showString;


@end
