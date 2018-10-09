//
//  SMFCache.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFCache.h"

@interface SMFCache<Key, Value> ()

@property (nonatomic, copy, readwrite) NSMutableDictionary<Key, Value> *internalCache;
@property dispatch_queue_t queue;

@end

@implementation SMFCache

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = dispatch_queue_create("com.SamanthaGatt.Astronomy-ObjC.CacheQueue", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

- (void)cacheWithValue:(id)value key:(id)key
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.internalCache[key] = value;
    });
}

- (id)valueWithKey:(id)key
{
    __block id result = nil;
    dispatch_sync(self.queue, ^{
        result = self.internalCache[key];
    });
    return result;
}

- (void)clear
{
    dispatch_async(self.queue, ^{
        [self.internalCache removeAllObjects];
    });
}

@end
