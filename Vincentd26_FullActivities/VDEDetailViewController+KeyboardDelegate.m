//
//  VDEDetailViewController+KeyboardDelegate.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailViewController+KeyboardDelegate.h"

@implementation VDEDetailViewController (KeyboardDelegate)

-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
  self.theDetailTaskView.theTaskLineDescription.backgroundColor = [UIColor whiteColor];

  return YES;
}

-(BOOL) textFieldShouldEndEditing:(UITextField *)textField {
  self.theDetailTaskView.theTaskLineDescription.backgroundColor = [UIColor lightTextColor];

  return YES;
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  if( [string isEqualToString:@"\n"]) {
    [self.theDetailTaskView.theTaskLineDescription resignFirstResponder];
    
    // update the model
    self.thetaskToDisplay.theTaskTitle = self.theDetailTaskView.theTaskLineDescription.text;
    [self.theDataController updateTheModelWithModifiedCell:self.thetaskToDisplay
                                                    forRow:self.theModifiedRow
                                                forSection:self.theModifedSection];
    [self.theTableViewController updateTableViewDisplay];
    
    
    return NO;
  }
  return YES;
}



@end
