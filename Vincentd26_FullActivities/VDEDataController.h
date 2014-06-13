//
//  VDETheDataController.h
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VDECellContent;

@interface VDEDataController : NSObject

@property (nonatomic) int numberOfSection;


-(id) initTheDataController;

-(int) numberofCellInSection:(int)aSection;

-(VDECellContent*) dataForRow:(int)theCurrentRow forSection:(int)theCurrentSection;

-(void) updateTheModelWithModifiedCell:(VDECellContent*)aCell forRow:(int)aRow forSection:(int)aSection;

-(void) addATask;

-(void) removeTaskAtRow:(int)aRow atSection:(int)aSection;

-(void) moveTaskFrom:(NSIndexPath*)fromIndexPath to:(NSIndexPath*)toIndexPath;

@end
