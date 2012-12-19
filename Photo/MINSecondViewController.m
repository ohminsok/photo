//
//  MINSecondViewController.m
//  Photo
//
//  Created by Mac on 11/29/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINSecondViewController.h"

@interface MINSecondViewController ()

- (void)showPhotoMenu;


@end

@implementation MINSecondViewController{
    UIImage *image;
    UIActionSheet *actionSheet;
    UIImagePickerController *imagePicker;
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"My Pics", @"My Pics");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
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


- (void)showPhotoMenu
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        actionSheet = [[UIActionSheet alloc]
                       initWithTitle:nil
                       delegate:self
                       cancelButtonTitle:@"Cancel"
                       destructiveButtonTitle:nil
                       otherButtonTitles:@"Take Photo", @"Choose From Library", nil];
        
        NSLog(@"action sheet object? %@",actionSheet);
        
        [actionSheet showInView:self.view];
    } else {
        [self choosePhotoFromLibrary];
    }
}

- (IBAction)choosePhoto:(UIButton *)sender{
    [self showPhotoMenu];
}


- (void)takePhoto
{
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)choosePhotoFromLibrary
{
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)showImage:(UIImage *)theImage
{
    self.imageView.image = theImage;
    self.imageView.hidden = NO;
    self.imageView.frame = CGRectMake(10, 10, 260, 260);
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    image = [info objectForKey:UIImagePickerControllerEditedImage];
    
    if ([self isViewLoaded]) {
        [self showImage:image];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    imagePicker = nil;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
    imagePicker = nil;
}

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)theActionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        [self takePhoto];
    } else if (buttonIndex == 1) {
        [self choosePhotoFromLibrary];
    }
    actionSheet = nil;
}

@end
