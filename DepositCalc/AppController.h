//
//  AppController.h
//  DepositCalc
//
//  Created by Николай Якунин on 28.06.12.
//  Copyright (c) 2012 necyakunin@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
@property (unsafe_unretained) IBOutlet NSTextField *amount;
@property (unsafe_unretained) IBOutlet NSTextField *period;
@property (unsafe_unretained) IBOutlet NSTextField *rate;
@property (unsafe_unretained) IBOutlet NSPopUpButton *month;
@property (unsafe_unretained) IBOutlet NSButton *capital;
@property (unsafe_unretained) IBOutlet NSMatrix *pere;
@property (unsafe_unretained) IBOutlet NSButton *proc;
@property (unsafe_unretained) IBOutlet NSTextField *total;
- (IBAction)calc:(id)sender;
- (IBAction)clear:(id)sender;

@end
