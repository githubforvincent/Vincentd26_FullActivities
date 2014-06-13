//
//  VDETheTableViewController+TableViewActions.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDETheTableViewController+DataSource.h"
#import "VDECellContent.h"


@implementation VDETableViewController (DataSource)


//----------------------------------------------------------------------
#pragma mark - Table view data source
//----------------------------------------------------------------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//----------------------------------------------------------------------
{
  
  return [self.theDataController numberOfSection];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//----------------------------------------------------------------------
{
  
  return [self.theDataController numberofCellInSection:(int)section];
}


- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
//----------------------------------------------------------------------
{
  
  UITableViewHeaderFooterView *tableViewHeaderFooterView = (UITableViewHeaderFooterView *) view;
  tableViewHeaderFooterView.textLabel.textColor = [UIColor whiteColor];
  
}



-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
  //----------------------------------------------------------------------
{
  
  
  
    switch (section) {
    case 0:
      return @"First Section";
      break;
    case 1:
      return @"Second section";
      break;
    case 2:
      return @"Third section";
      break;
    default:
      return @"Fourth section";
      break;
  
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//----------------------------------------------------------------------
{
  
  //NSLog(@"loading data");
  
  static NSString *CellIdentifier;
  int theCurrentSection = (int)indexPath.section;
  int theCurrentRow     = (int)indexPath.row;
  
  // get the data for the current indexPath
  VDECellContent *theCurrentDataForCell = [self.theDataController dataForRow:theCurrentRow forSection:theCurrentSection];
    
  // set the cell identifier according to the priority
  CellIdentifier = [NSString stringWithFormat:@"%d", theCurrentDataForCell.theTaskPriority];

  
  // cell construction on the right index path : section + row
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if(cell == nil) { // no reusable cell is free
    cell= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    cell.accessoryType              = UITableViewCellAccessoryDisclosureIndicator;
    cell.backgroundColor            = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
    cell.textLabel.textColor        = [UIColor whiteColor];
    cell.detailTextLabel.textColor  = [UIColor whiteColor];
    
  }
  cell.textLabel.text = theCurrentDataForCell.theTaskTitle;
  cell.detailTextLabel.text =[NSString stringWithFormat:@"Priority : %d",theCurrentDataForCell.theTaskPriority];
  [[cell imageView] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"prio%d.png",theCurrentDataForCell.theTaskPriority]]];
  
  return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//----------------------------------------------------------------------
{
  return 65;
}


 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//----------------------------------------------------------------------
 {
   return YES;
 }


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
  int section = (int)indexPath.section;
  int row     = (int)indexPath.row;
  if (editingStyle == UITableViewCellEditingStyleDelete) {
    // remove the cell from the data source
    [self.theDataController removeTaskAtRow:row atSection:section];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
  } 
}


// Override to support rearranging the table view.
//----------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
  
  [self.theDataController moveTaskFrom:fromIndexPath to:toIndexPath];
  [self updateTableViewDisplay];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
  //----------------------------------------------------------------------
  return YES;
}

@end
