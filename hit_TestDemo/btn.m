//
//  btn.m
//  hit_TestDemo
//
//  Created by rwli on 16/11/19.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "btn.h"

@implementation btn



-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch =[touches anyObject];
    CGPoint currentp =[touch locationInView:self];
    CGPoint prep =[touch previousLocationInView:self];
    CGFloat offset_x =currentp.x-prep.x;
    CGFloat offset_y =currentp.y-prep.y;
    self.transform =CGAffineTransformTranslate(self.transform, offset_x, offset_y);
    
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    if (self.popBtn) {
        CGPoint p =[self convertPoint:point toView:self.popBtn];
        if( [self.popBtn pointInside:p withEvent:event]){
            return self.popBtn;
        }else{
            return [super hitTest:point withEvent:event];
        }
        
    }else{
        return [super hitTest:point withEvent:event];
    }

}


@end
