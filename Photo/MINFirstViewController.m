//
//  MINFirstViewController.m
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINFirstViewController.h"

#import "MINNewClassViewController.h"

@interface MINFirstViewController ()

@end

@implementation MINFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Events", @"Events");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CreateNewButton:(UIButton *)sender {
    MINNewClassViewController *newClassViewController = [[MINNewClassViewController alloc] initWithNibName:@"MINNewClassViewController" bundle:nil];
    [self presentViewController:newClassViewController animated:YES completion:nil];
    
}
@end
