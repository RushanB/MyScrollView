//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Rushan on 2017-05-15.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        self.userInteractionEnabled = YES;
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panScreen:)];
        [self addGestureRecognizer:_panGesture];
        _contentSize = CGSizeMake(frame.size.width, frame.size.height-50);  //width
    }
    return self;
}


-(IBAction)panScreen:(UIPanGestureRecognizer *)panGesture{
    if([panGesture state] == UIGestureRecognizerStateBegan) {  //when state begins
        self.startP = self.bounds.origin.y; //start pointer
    }
    CGFloat minY = 0;  //min scroll
    CGFloat maxY = self.frame.size.height;  //max scroll scale
    
    if((self.startP + [panGesture translationInView:self].y) < 0){ //pan less than origin
        self.bounds = CGRectMake(self.bounds.origin.x, minY, self.contentSize.width, self.contentSize.height);
        
    }else if((self.startP + [panGesture translationInView:self].y) > maxY){
        self.bounds = CGRectMake(self.bounds.origin.x, maxY, self.contentSize.width, self.contentSize.height);
        
    }else{
        self.bounds = CGRectMake(self.bounds.origin.x, self.startP + [panGesture translationInView:self].y, self.contentSize.width, self.contentSize.height);
    }
}

@end
