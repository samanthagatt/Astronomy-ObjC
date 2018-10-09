//
//  SMFSolDescription.h
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMFSolDescription : NSObject

@property (nonatomic, copy, readonly) NSNumber *sol;
@property(nonatomic, copy, readonly) NSNumber *totalPhotos;
@property (nonatomic, copy, readonly) NSArray<NSString *> *cameras;

- (instancetype)initWithSol:(NSNumber *)sol totalPhotos:(NSNumber *)totalPhotos cameras:(NSArray<NSString *> *)cameras;
- (nullable instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
