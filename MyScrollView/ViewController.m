//
//  ViewController.m
//  MyScrollView
//
//  Created by Rushan on 2017-05-15.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIView *newView = [[UIView alloc] initWithFrame:self.view.frame];
    //[self.view addSubview:newView];
    
    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scrollView];  //adds scrollview
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor]; //redView
    [self.scrollView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor]; //greenView
    [self.scrollView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor]; //blueView
    [self.scrollView addSubview:blueView];
    
    UIView *yellowColor = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowColor.backgroundColor = [UIColor yellowColor]; //yellowView
    [self.scrollView addSubview:yellowColor];
}


/*
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    CGRect frame = self.view.bounds;
    frame.origin.y  += 100.0f;  //increase y bounds by 100
    self.view.bounds = frame;
    
}
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
