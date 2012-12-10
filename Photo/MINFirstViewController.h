//
//  MINFirstViewController.h
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MINFirstViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *eventTableView;


- (IBAction)createNewButton:(UIButton *)sender;

@end
