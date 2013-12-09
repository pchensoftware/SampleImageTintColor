//
//  MyController.m
//  SampleImageTintColor
//
//  Created by Peter Chen on 12/4/13.
//  Copyright (c) 2013 Peter Chen. All rights reserved.
//

#import "MyController.h"

@interface MyController ()

@end

@implementation MyController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, 300, 50)];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:13];
    label.text = @"These checkmarks use the same gray checkmark image with a tintColor applied to the image view";
    [self.view addSubview:label];
    
    [self _createImageViewAtY:100 color:nil];
    [self _createImageViewAtY:150 color:[UIColor greenColor]];
    [self _createImageViewAtY:200 color:[UIColor blueColor]];
    [self _createImageViewAtY:250 color:[UIColor redColor]];
    [self _createImageViewAtY:300 color:[UIColor orangeColor]];
}

- (void)_createImageViewAtY:(int)y color:(UIColor *)color {
    UIImage *image = [[UIImage imageNamed:@"gray checkmark.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    CGRect frame = imageView.frame;
    frame.origin.x = 100;
    frame.origin.y = y;
    imageView.frame = frame;
    
    if (color)
        imageView.tintColor = color;
    
    [self.view addSubview:imageView];
}

@end
