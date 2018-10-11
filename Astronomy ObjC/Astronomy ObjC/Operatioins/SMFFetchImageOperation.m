//
//  SMFFetchImageOperation.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/10/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFFetchImageOperation.h"

@interface SMFFetchImageOperation ()

@property (atomic, readwrite, getter=isExecuting) BOOL executing;
@property (atomic, readwrite, getter=isFinished) BOOL finished;

@end

@implementation SMFFetchImageOperation

@synthesize executing = _executing;
@synthesize finished = _finished;

- (void)start
{
    self.executing = YES;
    
}

@end
