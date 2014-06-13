//
//  VDEDetailViewController+DisplaySubviews.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/14.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailViewController+DisplaySubviews.h"

@implementation VDEDetailViewController (DisplaySubviews)

-(void) displayTheSubViewsWithOrientation:(UIInterfaceOrientation) currentOrientation {
  //---------------------------------------------------------------------------------------------
 
  // Screen size calculations
  //----------------------------------------------------------------------------------------
  int theViewWidth, theViewHeight;
  
  if (currentOrientation == UIInterfaceOrientationLandscapeLeft ||currentOrientation==UIInterfaceOrientationLandscapeRight) {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.height;
    theViewHeight = [[UIScreen mainScreen] bounds].size.width;
  } else {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.width;
    theViewHeight = [[UIScreen mainScreen] bounds].size.height;
  }
  
  // the toolbar
  //----------------------------------------------------------------------------------------
  int theToolBarX       = 0;
  int theToolBarWidth   = theViewWidth;
  int theToolBarHeight;
  /*
   if (self.isIPhone){
   theToolBarHeight=44;
   } else {
   theToolBarHeight=60;
   }
   */
  theToolBarHeight=44;
  
  int theToolBarY       = theViewHeight-theToolBarHeight;
  
  [self.theDetailTaskView.theToolBar setFrame:CGRectMake(theToolBarX,theToolBarY,theToolBarWidth, theToolBarHeight)];
  
  
  // the text field for task description
  //----------------------------------------------------------------------------------------

  int theTextFieldX = 0;
  int theTextFieldY = 100;
  int theTextFieldWidth = theViewWidth;
  int theTextFieldHeight = 50;
  
  
  [self.theDetailTaskView.theTaskLineDescription setFrame:CGRectMake(theTextFieldX,theTextFieldY,theTextFieldWidth, theTextFieldHeight)];
  
  
}

@end