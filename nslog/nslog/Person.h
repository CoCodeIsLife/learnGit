//
//  Person.h
//  nslog
//
//  Created by liuyanqi on 2017/8/20.
//  Copyright © 2017年 liuyanqi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>
@property(nonatomic,copy)NSString *nameP;
-(instancetype)initWithName:(NSString *)name;
@end
