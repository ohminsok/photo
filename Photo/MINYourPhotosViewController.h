//
//  MINYourPhotosViewController.h
//  Photo
//
//  Created by Mac on 12/13/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MINYourPhotosViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>

- (IBAction)choosePhoto:(UIButton *)sender;
- (IBAction)backButtonPressed:(UIButton *)sender;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;



@end
