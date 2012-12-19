//
//  MINEventPhotoViewController.m
//  Photo
//
//  Created by Mac on 12/13/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINEventPhotoViewController.h"
#import "MINYourPhotosViewController.h"

@interface MINEventPhotoViewController ()

@end

@implementation MINEventPhotoViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)uploadPhoto:(UIButton *)sender {
    
    MINYourPhotosViewController *photoVC = [[MINYourPhotosViewController alloc] initWithNibName:@"MINYourPhotosViewController" bundle:nil];
    [self presentViewController:photoVC animated:YES completion:nil];
    
}

- (IBAction)backToEvent:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
