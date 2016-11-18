//
//  view1.m
//  hit_TestDemo
//
//  Created by rwli on 16/11/19.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "view1.h"

@implementation view1

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint p =[self convertPoint:point toView:self.btn];
    if ([self.btn pointInside:p withEvent:event]) {
        return self.btn;
    }else{
        return [super hitTest:point withEvent:event];
    }
}


@end
