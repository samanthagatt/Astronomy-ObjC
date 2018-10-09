//
//  SMFMarsPhoto.h
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SMFCamera;

NS_ASSUME_NONNULL_BEGIN

@interface SMFMarsPhoto : NSObject

@property (nonatomic, copy, readonly) NSNumber *identifier;
@property (nonatomic, copy, readonly) NSNumber *sol;
@property (nonatomic, copy, readonly) SMFCamera *camera;
@property (nonatomic, copy, readonly) NSDate *earthDate;
@property (nonatomic, copy, readonly) NSURL *imageURL;

- (instancetype)initWithIdentifier:(NSNumber *)identifier
                               sol:(NSNumber *)sol
                            camera:(SMFCamera *)camera
                         earthDate:(NSDate *)earthDate
                          imageURL:(NSURL *)imageURL;
- (nullable instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
