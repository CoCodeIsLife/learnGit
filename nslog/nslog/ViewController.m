//
//  ViewController.m
//  nslog
//
//  Created by liuyanqi on 2017/8/3.
//  Copyright © 2017年 liuyanqi. All rights reserved.
//



#import "ViewController.h"
#import "PrefixHeader.pch"
#import "NSString+linch.h"
#import "Person.h"
typedef void(^myOwnBlock)(int);



@interface Linch : UILabel
@property (nonatomic,copy)NSString *lname;
@end



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"w6736573567";
    
    NSLog(@"%@",[str linchStringWithStr:str]);
    
    Person *person1 = [[Person alloc]initWithName:@"lyq"];
    
    NSLog(@"%@",person1.nameP);
    Person *person2 = [[Person alloc]initWithName:@"lyq9876545678"];
    
    NSLog(@"%@",person2.nameP);
    
    
    
    Person *p3 = [person1 copy];
    
    
    NSLog(@"------------赛:%@",p3.nameP);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 10, 10)];
    [self.view addSubview:label];
    
    label.text = @"12345678";
    
     void(^myBlock)(int) = ^(int age) {
         label.text = @"qweqwr";
    };
    
    myBlock(5);
    
    NSLog(@"^^^^^^^^^^^^^^%@",label.text);
    
    myOwnBlock block1 = ^(int age){
        NSLog(@"^^**^^%d",age);
    };
    
    block1(20);
    
    
    
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
