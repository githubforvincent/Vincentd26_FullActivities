//
//  VDETableViewController.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDETableViewController.h"
#import "VDEDetailViewController.h"

@interface VDETableViewController ()

@end

@implementation VDETableViewController

- (id)initWithStyle:(UITableViewStyle)style{
  //----------------------------------------------------------------------
  self = [super initWithStyle:style];
  if (self) {
   

  }
  return self;
}

- (void)viewDidLoad
//----------------------------------------------------------------------
{
  [super viewDidLoad];

  
  [[self navigationItem] setTitle:@"Task List"];
  
  UIBarButtonItem *theAddButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addATask)];
  self.navigationItem.rightBarButtonItem = theAddButton;
  self.navigationItem.leftBarButtonItem = [self editButtonItem];
   
}

- (void)didReceiveMemoryWarning
//----------------------------------------------------------------------
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  //----------------------------------------------------------------------
  NSInteger section = [indexPath section];
  NSInteger row = [indexPath row];

  // initialize  the detail view controller -> task detail view
  VDEDetailViewController *theTaskDetailControllerForTaskSelected = [[VDEDetailViewController alloc] init];
  // "pushing" data
  theTaskDetailControllerForTaskSelected.thetaskToDisplay       = [self.theDataController dataForRow:row forSection:section];
  theTaskDetailControllerForTaskSelected.theModifedSection      = section;
  theTaskDetailControllerForTaskSelected.theModifiedRow         = row;
  theTaskDetailControllerForTaskSelected.theTableViewController = self;
  ;
  
  theTaskDetailControllerForTaskSelected.theDataController = self.theDataController;
  
  [[self navigationController] pushViewController: theTaskDetailControllerForTaskSelected animated:YES];
}


-(void)updateTableViewDisplay {
  //----------------------------------------------------------------------
  // NSLog(@"reload data");
  [[self tableView]reloadData];
}

@end