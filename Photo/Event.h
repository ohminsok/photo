//
//  Event.h
//  Photo
//
//  Created by Mac on 12/5/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * password;

@end
