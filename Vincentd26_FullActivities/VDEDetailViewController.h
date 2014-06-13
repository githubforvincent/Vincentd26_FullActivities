//
//  VDEDetailViewController.h
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/14.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VDEDetailTaskView.h"
#import "VDECellContent.h"
#import "VDEDataController.h"
#import "VDETableViewController.h"



@interface VDEDetailViewController : UIViewController  <UITextViewDelegate, UITextFieldDelegate>

  @property (nonatomic,strong) VDEDetailTaskView      *theDetailTaskView;
  @property( nonatomic,strong) VDEDataController      *theDataController;
  @property( nonatomic,strong) VDETableViewController *theTableViewController;

  @property (nonatomic, retain) VDECellContent    *thetaskToDisplay;
  @property( nonatomic) int                       theModifiedRow;
  @property( nonatomic) int                       theModifedSection;


@end
