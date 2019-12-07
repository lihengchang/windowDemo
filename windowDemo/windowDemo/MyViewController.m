//
//  MyViewController.m
//  windowDemo
//
//  Created by li on 2019/12/7.
//  Copyright © 2019 li. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    NSTextField *text = [[NSTextField alloc]initWithFrame:CGRectMake(100, 100, 200, 30)];
    
    text.editable = NO;
    text.bordered = NO;
    
    text.stringValue = @"Hello";
    
    
    [self.view addSubview:text];
    
}

@end
