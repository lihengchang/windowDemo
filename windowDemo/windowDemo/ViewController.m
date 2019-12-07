//
//  ViewController.m
//  windowDemo
//
//  Created by li on 2019/12/7.
//  Copyright © 2019 li. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}



// I use this ViewController as the base class for all ViewControllers
- (instancetype)initWithFrame:(CGRect)frame {
    if ([super init]) {
        self.view = [[NSView alloc]initWithFrame:frame];
        [self viewDidLoad];
    }
    return self;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
