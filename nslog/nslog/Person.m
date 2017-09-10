//
//  Person.m
//  nslog
//
//  Created by liuyanqi on 2017/8/20.
//  Copyright © 2017年 liuyanqi. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _nameP = name;
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone
{
//    return [[Person alloc]initWithName:_nameP];
    
   Person *p =   [[Person alloc]init];
    p.nameP = _nameP;
    
    
    return p;
    
    
}
@end
