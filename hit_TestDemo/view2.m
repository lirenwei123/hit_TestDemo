//
//  view2.m
//  hit_TestDemo
//
//  Created by rwli on 16/11/19.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "view2.h"
#import "btn.h"

@implementation view2

- (IBAction)btnClick:(btn *)sender {
    if (!sender.popBtn) {
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    [btn setImage:[[UIImage imageNamed:@"4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [btn setImage:[[UIImage imageNamed:@"1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
    btn.frame =CGRectMake(sender.frame.size.width*0.5, -sender.frame.size.width*0.55, sender.frame.size.width*0.5, sender.frame.size.width*0.5);
    [sender addSubview:btn];
    sender.popBtn =btn;
    }else{
        return;
    }
}


@end
