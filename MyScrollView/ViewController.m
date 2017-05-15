//
//  ViewController.m
//  MyScrollView
//
//  Created by Rushan on 2017-05-15.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    CGRect frame = self.view.bounds;
    frame.origin.y  += 100.0f;
    self.view.bounds = frame;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
