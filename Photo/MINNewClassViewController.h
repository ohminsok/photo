//
//  MINNewClassViewController.h
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MINNewClassViewController : UIViewController

<UITextFieldDelegate>

//when entering new outlet, need to go to .m view and add setdelegate self
//setting up these properties allows the keyboard to go away
@property (strong, nonatomic) IBOutlet UITextField *eventname;
@property (strong, nonatomic) IBOutlet UITextField *passwordname;
@property (strong, nonatomic) NSString *eventNameProperty;

- (IBAction)backToFIrst:(UIButton *)sender;

- (IBAction)createEvent:(UIButton *)sender;


@end
