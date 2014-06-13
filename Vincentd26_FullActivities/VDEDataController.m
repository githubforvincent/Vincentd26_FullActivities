//
//  VDETheDataController.m
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDataController.h"
#import "VDECellContent.h"


@interface VDEDataController(){
  
  int compteur;
  NSMutableArray *theSections;
}

@end

@implementation VDEDataController

-(id) initTheDataController {
  //------------------------------------------------------------------------------
  self= [super init];
  if (self) {
 
    _numberOfSection =4;
    
    theSections = [[NSMutableArray alloc]init];
    
    NSString *aTitle, *aDescription, *aNImageName;
    int aPriority;;

    // adding 2 cells for four section
    int iteration_cellNumber;
    int iteration_sectionNumber;

    for ( iteration_sectionNumber = 0 ; iteration_sectionNumber<_numberOfSection; iteration_sectionNumber++){
      
      [theSections addObject:[[NSMutableArray alloc]init]]; // an array into an array : section + cell
      
      for(iteration_cellNumber =0; iteration_cellNumber<2; iteration_cellNumber++) {
        
        aTitle        = [NSString stringWithFormat:@"Task %d, section %d", iteration_cellNumber, iteration_sectionNumber];
        aDescription  = @"Pas de description par défaut";
        aNImageName   = @"";
        aPriority     = iteration_cellNumber;
        
        VDECellContent *theCellToInsert   = [[VDECellContent alloc] initWithTitle:aTitle descrition:aDescription priority:aPriority andImageNamed:aNImageName];
        
        [[theSections objectAtIndex:iteration_sectionNumber] addObject: theCellToInsert];
      }
    }
  }
    
  return self;
  
}



-(int) numberofCellInSection:(int)aSection{
  //------------------------------------------------------------------------------

  return (int) [[theSections objectAtIndex: aSection] count];
  
  
}

-(VDECellContent*) dataForRow:(int)theCurrentRow forSection:(int)theCurrentSection {
//------------------------------------------------------------------------------
// Return the object at for the requested row/section by the tableview datasource
  
  return [[theSections objectAtIndex:theCurrentSection] objectAtIndex:theCurrentRow];
  
}

-(void) updateTheModelWithModifiedCell:(VDECellContent*)aCell forRow:(int)aRow forSection:(int)aSection {
//------------------------------------------------------------------------------
  
  [[theSections objectAtIndex:aSection] removeObjectAtIndex:aRow];
  [[theSections objectAtIndex:aSection] insertObject:aCell atIndex:aRow];

}

-(void) addATask {
  //------------------------------------------------------------------------------
  VDECellContent *theNewTask = [[VDECellContent alloc] initWithTitle:@"New Task" descrition:@"New description" priority:0 andImageNamed:@"imagename"];
  
  [[theSections objectAtIndex:0] insertObject:theNewTask atIndex:0];
}

-(void) removeTaskAtRow:(int)aRow atSection:(int)aSection {
  //------------------------------------------------------------------------------
  [[theSections objectAtIndex:aSection] removeObjectAtIndex:aRow];
}

-(void) moveTaskFrom:(NSIndexPath*)fromIndexPath to:(NSIndexPath*)toIndexPath{
//------------------------------------------------------------------------------

  int fromSection           = (int)fromIndexPath.section;
  int fromRow               = (int)fromIndexPath.row;
  int destionationSection   = (int)toIndexPath.section;
  int destinationRow        = (int)toIndexPath.row;
  
  VDECellContent *theTaskToMove = [[theSections objectAtIndex:fromSection] objectAtIndex:fromRow];
  [[theSections objectAtIndex:destionationSection] insertObject:theTaskToMove atIndex:destinationRow];
  [self removeTaskAtRow:fromRow atSection:fromSection];  
}

  
  
  
  

@end
