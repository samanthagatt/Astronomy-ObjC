//
//  SMFCache.h
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMFCache<Key, Value> : NSObject

- (instancetype)init;

- (void)cacheWithValue:(Value)value key:(Key)key;
- (Value)valueWithKey:(Key)key;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
