//
//  VDEDetailTaskView.h
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/14.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VDEDetailTaskView : UIView {



//UISegmentedControl  *thePrioritySegementedControl;


}

@property ( nonatomic, strong) UIToolbar       *theToolBar;

@property ( nonatomic, strong)  UIBarButtonItem     *thePriorityButton0;
@property ( nonatomic, strong)  UIBarButtonItem     *thePriorityButton1;
@property ( nonatomic, strong)  UIBarButtonItem     *thePriorityButton2;
@property ( nonatomic, strong)  UIBarButtonItem     *thePriorityButton3;
@property ( nonatomic, strong)  UIBarButtonItem     *thePriorityButton4;
@property ( nonatomic, strong)  UIBarButtonItem     *theFlexibleSpaceBar;
@property ( nonatomic, strong)  UIBarButtonItem     *theFixedSpaceBar;


@property ( nonatomic, strong)  UILabel             *theTaskDescriptionLabel;
//@property ( nonatomic, strong)  UITextView          *theTaskDescription;
@property ( nonatomic, strong)  UITextField         *theTaskLineDescription;
@property ( nonatomic, strong)  NSString            *theImageName;


@end
