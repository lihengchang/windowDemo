//
//  AppDelegate.m
//  windowDemo
//
//  Created by li on 2019/12/7.
//  Copyright © 2019 li. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController.h"

@interface AppDelegate ()<NSApplicationDelegate,NSWindowDelegate>

@property (nonatomic,strong)NSWindow *myWindow;
@property (nonatomic,strong)MyViewController *myVC;

@end

@implementation AppDelegate

- (MyViewController *)myVC {
    if (!_myVC) {
        _myVC = [[MyViewController alloc]initWithFrame:self.myWindow.frame];
    }
    return _myVC;
}

- (NSWindow *)myWindow {
    if (!_myWindow) {
        
        NSWindowStyleMask type = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskFullSizeContentView;
        
        
        CGFloat Height = [NSScreen mainScreen].frame.size.height / 2;
        CGFloat width = [NSScreen mainScreen].frame.size.width / 2;
        CGRect rect = CGRectMake(0, 0, width, Height);
        
        _myWindow = [[NSWindow alloc]initWithContentRect:rect styleMask:type backing:NSBackingStoreBuffered defer:YES];
        
        _myWindow.titlebarAppearsTransparent=YES;
        _myWindow.titleVisibility = NSWindowTitleHidden;
        _myWindow.delegate = self;
        [_myWindow center];
    }
    return _myWindow;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.myWindow.contentViewController = self.myVC;
    
    NSApplication *application = [NSApplication sharedApplication];
    application.delegate = self;

    [self.myWindow makeKeyAndOrderFront:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

#pragma mark - Delegate

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    [self.myWindow makeKeyAndOrderFront:self];
    return YES;
}


- (BOOL)windowShouldClose:(id)sender {

    [self.myWindow orderOut:self.myWindow];

    return NO;
}

@end
