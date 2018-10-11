//
//  SMFConcurrentOperation.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/10/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFConcurrentOperation.h"

@interface SMFConcurrentOperation ()

@property dispatch_queue_t startQueue;
@property SMFConcurrentOperationState state;

@end

@implementation SMFConcurrentOperation

- (instancetype)init
{
    self = [super init];
    if (self) {
        _state = SMFConcurrentOperationStateReady;
        _startQueue = dispatch_queue_create("com.SamanthaGatt.Astronomy.ConcurrentOperationStateQueue", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

- (void)setOperationState:(SMFConcurrentOperationState)operationState
{
    NSString *oldState = @"";
    switch (_state) {
        case SMFConcurrentOperationStateReady:
            oldState = @"ready";
        case SMFConcurrentOperationStateExecuting:
            oldState = @"executing";
        case SMFConcurrentOperationStateFinished:
            oldState = @"finished";
    }
    NSString *newState = @"";
    switch (operationState) {
        case SMFConcurrentOperationStateReady:
            newState = @"ready";
        case SMFConcurrentOperationStateExecuting:
            newState = @"executing";
        case SMFConcurrentOperationStateFinished:
            newState = @"finished";
    }
    
    [self willChangeValueForKey:oldState];
    [self willChangeValueForKey:newState];
    
     _state = operationState;
    
    [self didChangeValueForKey:oldState];
    [self didChangeValueForKey:newState];
}
- (SMFConcurrentOperationState)operationState
{
    __block SMFConcurrentOperationState result;
    dispatch_sync(self.startQueue, ^{
        result = self->_state;
    });
    return result;
}

- (BOOL)isReady
{
    return [super isReady] && self.state == SMFConcurrentOperationStateReady;
}
- (BOOL)isExecuting
{
    return [super isExecuting];
}
- (BOOL)isFinished
{
    return [super isFinished];
}
- (BOOL)isAsynchronous
{
    return YES;
}

@end
