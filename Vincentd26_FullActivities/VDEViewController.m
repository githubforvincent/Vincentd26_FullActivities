//
//  VDEViewController.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEViewController.h"
#import "VDEDataController.h"

@interface VDEViewController () {

  VDETableViewController *theTableViewController;
  UINavigationController *theNavigationController;
  VDEDataController      *theDataController;

}

@end

@implementation VDEViewController

- (void)viewDidLoad
//----------------------------------------------------------
{
  [super viewDidLoad];
  
  // Device type
  self.iPhone = ([[UIDevice currentDevice] userInterfaceIdiom ]== UIUserInterfaceIdiomPhone);
  self.iPad   = !(self.isIPhone);
  
  //Version
  self.iOS6 = ([[[UIDevice currentDevice] systemVersion] characterAtIndex:0]  == '6');
  
  UIView *mainView        = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  
  // Table View initialisation
  theTableViewController  =[[VDETableViewController alloc] initWithStyle:UITableViewStyleGrouped];
  theTableViewController.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backGroundImage"]];

  //Data controller initialisation and set property for the table view
  theDataController   =[[VDEDataController alloc] initTheDataController];
  
  theTableViewController.theDataController =theDataController;
  
  // navigation bar initialisation
  theNavigationController = [[UINavigationController alloc] initWithRootViewController:theTableViewController];
 
  [mainView addSubview: [theNavigationController view]];
  
  [self setView:mainView];
  
}


-(BOOL) shouldAutorotate {
	//--------------------------------------------------------------------------------------------------------
  return YES;
}


-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)theNewOrientation duration:(NSTimeInterval)d {
  //--------------------------------------------------------------------------------------------------------
  
  if ( self.isIPad) { // rotation allowed only for iPad
    NSLog(@"rotate");
    
  }
  
}
- (void)didReceiveMemoryWarning
//--------------------------------------------------------------------------------------------------------
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
