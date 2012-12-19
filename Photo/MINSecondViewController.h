//
//  MINSecondViewController.h
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MINSecondViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>

- (IBAction)choosePhoto:(UIButton *)sender;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
//@property (nonatomic, weak) UIImagePickerController *imagePicker;



@end
