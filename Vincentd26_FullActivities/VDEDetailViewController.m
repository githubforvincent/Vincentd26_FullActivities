//
//  VDEDetailViewController.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/14.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailViewController.h"
#import "VDEDetailTaskView.h"
#import "VDEDetailViewController+ConfigureSubViews.h"
#import "VDEDetailViewController+DisplaySubviews.h"

@interface VDEDetailViewController () {

  UIImageView *theDetailImageBackgroundView;

  
}
@end

@implementation VDEDetailViewController

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//----------------------------------------------------------------------
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}
*/
- (void)viewDidLoad
//----------------------------------------------------------------------
{
  [super viewDidLoad];
  UIView *mainView        = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  [self setView:mainView];
  
  theDetailImageBackgroundView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"backGroundImage"]];
  theDetailImageBackgroundView.frame = mainView.frame;

  [self.view addSubview:theDetailImageBackgroundView];
  
  // Detail View initialisation
  
  self.theDetailTaskView  = [[VDEDetailTaskView alloc] initWithFrame:self.view.frame];
  //self.theDetailTaskView.theDetailTaskViewController = self;
  [self configureSubviews];
  [self displayTheSubViewsWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];

 
}

- (void)didReceiveMemoryWarning
//----------------------------------------------------------------------
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)theNewOrientation duration:(NSTimeInterval)d {
  //--------------------------------------------------------------------------------------------------------
 
  NSLog(@"test vue");
  // [self displayTheSubViewsWithOrientation:theNewOrientation];
}




@end
