//
//  MINFirstViewController.m
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINFirstViewController.h"

#import "MINNewClassViewController.h"

#import "Event.h"

@interface MINFirstViewController ()

//only accessible to this class (these properties)
@property NSMutableArray *events;
@property MINNewClassViewController *minNewClassVC;

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
    
    _minNewClassVC = [[MINNewClassViewController alloc] init];
    
}

-(void)viewDidAppear:(BOOL)animated{
    _events = [[NSMutableArray alloc] initWithArray:[Event findAll]];
    NSLog(@"%@",_events);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createNewButton:(UIButton *)sender {
    MINNewClassViewController *newClassViewController = [[MINNewClassViewController alloc] initWithNibName:@"MINNewClassViewController" bundle:nil];
    [self presentViewController:newClassViewController animated:YES completion:nil];
    
}
@end
