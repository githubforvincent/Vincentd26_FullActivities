//
//  VDECellContent.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDECellContent.h"

@implementation VDECellContent

-(instancetype) initWithTitle:(NSString*)aTitle descrition:(NSString*)aDescription priority:(int)aPriority andImageNamed:(NSString*)anImageName {

  self=[self init];
  if(self) {
    self.theTaskTitle           = aTitle;
    self.theTaskDescription     = aDescription;
    self.theTaskImageName       = anImageName;
    self.theTaskPriority        = aPriority;
    }
  return self;
}


@end

