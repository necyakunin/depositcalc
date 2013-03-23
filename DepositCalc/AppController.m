//
//  AppController.m
//  DepositCalc
//
//  Created by Николай Якунин on 28.06.12.
//  Copyright (c) 2012 necyakunin@gmail.com. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize amount;
@synthesize period;
@synthesize rate;
@synthesize month;
@synthesize capital;
@synthesize pere;
@synthesize proc;
@synthesize total;

- (IBAction)calc:(id)sender {
    float p=[amount floatValue];
    float t=[period floatValue];
    float i=[rate floatValue];
    int g = 365*100;
    float j=30.4167,y=t*j,r=i*y,h=r/g,k=(1+h),s=p*k,q=i*j,u=q/g,d=(1+u),l=pow(d,t),w=p*l;
    float c=s-p, m=w-p;
    if ([proc state]==NSOffState)
    {
        if ([capital state]==NSOffState)
            [total setFloatValue:s];
        else
            [total setFloatValue:w];
    }
    else 
    {
        if ([capital state]==NSOffState)
            [total setFloatValue:c];
        else
            [total setFloatValue:m];
    }

}

- (IBAction)clear:(id)sender {
    [amount setStringValue:@""];
    [period setStringValue:@""];
    [rate setStringValue:@""];
    [total setStringValue:@""];

}
@end
