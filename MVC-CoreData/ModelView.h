//
//  ModelView.h
//  MVC-CoreData
//
//  Created by Suresh on 2/28/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelView : NSObject
@property (strong , nonatomic)NSString *namestr,*designstr,*addressstr;

- (instancetype)initName:(NSString *)name Design:(NSString *)desig address:(NSString*)addr;


@end
