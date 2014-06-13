//
//  VDECellContent.h
//  Vincentd26_FullActivities
//
//  Created by Utilisation on 12/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface VDECellContent : NSObject

@property(nonatomic,retain) NSString  *theTaskTitle;
@property(nonatomic,retain) NSString  *theTaskDescription;
@property(nonatomic,retain) NSString  *theTaskImageName;
@property(nonatomic)        int       theTaskPriority;


-(instancetype) initWithTitle:(NSString*)aTitle
                   descrition:(NSString*)aDescription
                     priority:(int)aPriority
                andImageNamed:(NSString*)anImageName;


@end

