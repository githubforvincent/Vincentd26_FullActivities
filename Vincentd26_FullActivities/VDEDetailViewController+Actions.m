//
//  VDEDetailViewController+Actions.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailViewController+Actions.h"

@implementation VDEDetailViewController (Actions)


-(void) priorityButtonPressed:(UIBarButtonItem*) sender {
  //------------------------------------------------------------------------------
  self.theDetailTaskView.thePriorityButton0.enabled = YES;
  self.theDetailTaskView.thePriorityButton1.enabled = YES;
  self.theDetailTaskView.thePriorityButton2.enabled = YES;
  self.theDetailTaskView.thePriorityButton3.enabled = YES;
  self.theDetailTaskView.thePriorityButton4.enabled = YES;

  switch ( sender.tag) {
    case 0:
      self.theDetailTaskView.thePriorityButton0.enabled = NO;
    break;
      
    case 1:
      self.theDetailTaskView.thePriorityButton1.enabled = NO;
      break;
      
    case 2:
      self.theDetailTaskView.thePriorityButton2.enabled = NO;
      break;
      
    case 3:
      self.theDetailTaskView.thePriorityButton3.enabled = NO;
      break;
      
    case 4:
      self.theDetailTaskView.thePriorityButton4.enabled = NO;
      break;
      
    default:
      break;
  }

    self.thetaskToDisplay.theTaskPriority = (int)sender.tag;
    [self.theDataController updateTheModelWithModifiedCell:self.thetaskToDisplay
                                                    forRow:self.theModifiedRow
                                                forSection:self.theModifedSection];
     
   [self.theTableViewController updateTableViewDisplay];
}
@end
