//
//  ModelView.m
//  MVC-CoreData
//
//  Created by Suresh on 2/28/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ModelView.h"
#import "AppDelegate.h"
@implementation ModelView




- (instancetype)initName:(NSString *)name Design:(NSString *)desig address:(NSString*)addr{
    self = [super init];
    
    if (self) {
        
        self.namestr = name;
        
        self.designstr = desig;
        
        self.addressstr = addr;
        
    }
    return self;
    
    
}








@end
