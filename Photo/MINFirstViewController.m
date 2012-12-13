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

#import "MINEventPhotoViewController.h"

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

}

-(void)viewDidAppear:(BOOL)animated{
    _events = [[NSMutableArray alloc] initWithArray:[Event findAll]];
    
    [_eventTableView reloadData];

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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_events count];
}

#pragma mark - Test Pragma
//setup the tableView's cells.
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *Cellidentifier = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:Cellidentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Cellidentifier];
    }
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.textLabel.textColor = [UIColor blackColor];
    cell.textLabel.text = [[_events objectAtIndex:indexPath.row] name];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //If the table view is asking to commit a delete command
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        Event *event = [_events objectAtIndex:indexPath.row];
        [event deleteEntity];
        [_events removeObjectAtIndex:indexPath.row];
        [[NSManagedObjectContext defaultContext] save];
        [_eventTableView reloadData];
    }


}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //select row - take to another screen
    MINEventPhotoViewController *eventPhotoViewController = [[MINEventPhotoViewController alloc] initWithNibName:@"MINEventPhotoViewController" bundle:nil];
    [self presentViewController:eventPhotoViewController animated:YES completion:nil];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //headers in table
    if (section == 0){
        return @"header 1";
    } else if (section == 1) {
        return @"header 2";
    }
    return nil;
}




//implement this method to allow users to tap on rows
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}

//- (void)deleteRowsAtIndexPaths:(NSArray *)event withRowAnimation:(UITableViewRowAnimation)UITableViewRowAnimationLeft
//{
//
//}

@end
