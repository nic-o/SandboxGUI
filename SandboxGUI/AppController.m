//
//  AppController.m
//  SandboxGUI
//
//  Created by Nicolas Georget on 2/13/13.
//  Copyright (c) 2013 Nicolas Georget. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (IBAction)displayAlert:(id)sender {
  NSBeginCriticalAlertSheet(@"Multiple Phototheque",
                            @"High Resolution",
                            @"Cancel",
                            @"Low Resolution",
                            [[NSApp delegate] window],
                            self,
                            @selector(sheetDidEnd:resultCode:contextInfo:),
                            NULL,
                            NULL,
                            @"You are connected to %d servers", 2);

}

- (void)sheetDidEnd:(NSWindow *)sheet
         resultCode:(NSInteger)resultCode
        contextInfo:(void *)contextInfo {
  if (resultCode == NSAlertDefaultReturn) {
    NSLog(@"You have pressed the High Resolution button");
  }
  if (resultCode == NSAlertAlternateReturn) {;
    NSLog(@"You have pressed the Cancel button");
  }
  if (resultCode == NSAlertOtherReturn) {
    NSLog(@"You have pressed the Low Resolution button");
  }
}

@end
