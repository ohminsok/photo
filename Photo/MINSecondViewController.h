//
//  MINSecondViewController.h
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MINSecondViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate, UITableViewDelegate, UITableViewDataSource>


- (IBAction)choosePhoto:(UIButton *)sender;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UITableView *photoAlbum;

@property (strong, nonatomic) NSMutableArray *images;

@property (nonatomic, assign) IBOutlet UITableViewCell *customCell;
@property (strong, nonatomic) IBOutlet UIImageView *cellImageView;
@property (strong, nonatomic) IBOutlet UILabel *cellLabel;

@end
