//
//  MINNewClassViewController.m
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINNewClassViewController.h"
#import "Event.h"

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
    
    [_eventname setDelegate:self];
    [_passwordname setDelegate:self];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToFIrst:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)createEvent:(UIButton *)sender {
    NSLog(@"%@ create event called", _eventname.text);
    
    //used for core data
    Event *event = [Event createEntity];
    event.name = _eventname.text;
    
    [[NSManagedObjectContext defaultContext] save];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


//because this is BOOL, need return Yes;
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [_passwordname resignFirstResponder];
    [_eventname resignFirstResponder];
    
    return YES;
    
}


@end
