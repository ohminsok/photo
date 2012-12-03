//
//  MINNewClassViewController.m
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINNewClassViewController.h"

@interface MINNewClassViewController ()

@end

@implementation MINNewClassViewController

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

- (IBAction)BackToFIrst:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)CreateEvent:(UIButton *)sender {
    
    
}
@end
