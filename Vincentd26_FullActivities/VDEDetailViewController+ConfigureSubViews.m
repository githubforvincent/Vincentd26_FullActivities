//
//  VDEDetailViewController+ConfigureSubViews.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/14.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailViewController+ConfigureSubViews.h"
#import "VDEDetailTaskView.h"
#import "VDEDetailViewController+DisplaySubviews.h"
#import "VDEDetailViewController+Actions.h"


@implementation VDEDetailViewController (ConfigureSubViews)



-(void) configureSubviews {
    
  
#pragma mark buttons
  //--------------------------------------------------------------------------------------------------------

  self.theDetailTaskView.thePriorityButton0 = [[UIBarButtonItem alloc] initWithCustomView:[self createTempButtonNumber:0 target:self action:@selector(priorityButtonPressed:)]];
  self.theDetailTaskView.thePriorityButton1 = [[UIBarButtonItem alloc] initWithCustomView:[self createTempButtonNumber:1 target:self action:@selector(priorityButtonPressed:)]];
  self.theDetailTaskView.thePriorityButton2 = [[UIBarButtonItem alloc] initWithCustomView:[self createTempButtonNumber:2 target:self action:@selector(priorityButtonPressed:)]];
  self.theDetailTaskView.thePriorityButton3 = [[UIBarButtonItem alloc] initWithCustomView:[self createTempButtonNumber:3 target:self action:@selector(priorityButtonPressed:)]];
  self.theDetailTaskView.thePriorityButton4 = [[UIBarButtonItem alloc] initWithCustomView:[self createTempButtonNumber:4 target:self action:@selector(priorityButtonPressed:)]];

  self.theDetailTaskView.thePriorityButton0.enabled = YES;
  self.theDetailTaskView.thePriorityButton1.enabled = YES;
  self.theDetailTaskView.thePriorityButton2.enabled = YES;
  self.theDetailTaskView.thePriorityButton3.enabled = YES;
  self.theDetailTaskView.thePriorityButton4.enabled = YES;
  
  int thePriorityToDisplay = self.thetaskToDisplay.theTaskPriority;
  switch (thePriorityToDisplay) {
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
  
  self.theDetailTaskView.theFlexibleSpaceBar     = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                          target:nil
                                                                          action:@selector(alloc)];
  
  self.theDetailTaskView.theFixedSpaceBar        = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                          target:nil
                                                                          action:@selector(alloc)];
  [self.theDetailTaskView.theFixedSpaceBar setWidth:5];
  
  NSArray *theTools =@[self.theDetailTaskView.theFixedSpaceBar,
                       self.theDetailTaskView.thePriorityButton0,
                       self.theDetailTaskView.theFlexibleSpaceBar,
                       self.theDetailTaskView.thePriorityButton1,
                       self.theDetailTaskView.theFlexibleSpaceBar,
                       self.theDetailTaskView.thePriorityButton2,
                       self.theDetailTaskView.theFlexibleSpaceBar,
                       self.theDetailTaskView.thePriorityButton3,
                       self.theDetailTaskView.theFlexibleSpaceBar,
                       self.theDetailTaskView.thePriorityButton4,
                       self.theDetailTaskView.theFixedSpaceBar];
  
  
  
#pragma mark Toolbar
  //--------------------------------------------------------------------------------------------------------
  // The toolbar on second position in order to have it on top of the webview
  self.theDetailTaskView.theToolBar = [[UIToolbar alloc] init];
  [self.theDetailTaskView.theToolBar setItems:theTools];
  [self.theDetailTaskView.theToolBar setBarStyle:UIBarStyleBlackTranslucent];
  //[theToolBar setBackgroundColor:[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0]];
  [[self view] addSubview:self.theDetailTaskView.theToolBar];
  



#pragma mark TextField / TextView
//--------------------------------------------------------------------------------------------------------

  self.theDetailTaskView.theTaskLineDescription = [[UITextField alloc]init];
  
  self.theDetailTaskView.theTaskLineDescription.delegate =self;
  self.theDetailTaskView.theTaskLineDescription.text = self.thetaskToDisplay.theTaskTitle;
  self.theDetailTaskView.theTaskLineDescription.backgroundColor = [UIColor lightTextColor];
  
  // To add a padding : source StackOverflow
  UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
  self.theDetailTaskView.theTaskLineDescription.leftView = paddingView;
  self.theDetailTaskView.theTaskLineDescription.leftViewMode = UITextFieldViewModeAlways;
  
  self.theDetailTaskView.theTaskLineDescription.returnKeyType = UIReturnKeyDone;
  
    
  [[self view]  addSubview:self.theDetailTaskView.theTaskLineDescription];
  


}

#pragma mark  HELPER_METHOD
//--------------------------------------------------------------------------------------------------------


-(UIButton*) createTempButtonNumber:(int )aNumber target:(id)aTarget action:(SEL)anAction {
  //--------------------------------------------------------------------------------------------------------
  // retuirn a UIbutton configured with images
  // Returned button to be included into UIBarButtonItem
  
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
    aButton.tag = aNumber; // to identify the button pressed

    UIImage *buttonSelectedImage= [UIImage imageNamed:[NSString stringWithFormat:@"prio%d.png",aNumber]];
    UIImage *buttonChoicedImage = [UIImage imageNamed:[NSString stringWithFormat:@"disabledPrio%d.png",aNumber]];
    [aButton setBackgroundImage:buttonSelectedImage forState:UIControlStateDisabled];
    [aButton setBackgroundImage:buttonChoicedImage  forState:UIControlStateNormal];

    [aButton addTarget:aTarget action:anAction forControlEvents:UIControlEventTouchUpInside];

    CGRect buttonFrame = [aButton frame];
    buttonFrame.size.width = 30;
    buttonFrame.size.height =30.0;
    [aButton setFrame:buttonFrame];
  
  return aButton;
}

@end
