//
//  SMFConcurrentOperation.h
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/10/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMFConcurrentOperation : NSOperation

typedef NS_ENUM(NSInteger, SMFConcurrentOperationState) {
    SMFConcurrentOperationStateReady,
    SMFConcurrentOperationStateExecuting,
    SMFConcurrentOperationStateFinished
};

@property SMFConcurrentOperationState operationState;

@end

NS_ASSUME_NONNULL_END
