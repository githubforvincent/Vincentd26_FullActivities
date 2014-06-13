//
//  VDETableViewController+Actions.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 13/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDETableViewController+Actions.h"

@implementation VDETableViewController (Actions)


-(void) addATask {
  
  [self.theDataController addATask];
  [self updateTableViewDisplay];
  
  
}

@end
