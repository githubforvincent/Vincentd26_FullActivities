//
//  VDETableViewController.h
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VDECellContent.h"
#import "VDEDataController.h"


@interface VDETableViewController : UITableViewController


@property( nonatomic,strong)  VDEDataController      *theDataController;

-(void)updateTableViewDisplay;



@end
