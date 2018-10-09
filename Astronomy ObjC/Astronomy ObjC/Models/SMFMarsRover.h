//
//  SMFMarsRover.h
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SMFSolDescription;

NS_ASSUME_NONNULL_BEGIN

@interface SMFMarsRover : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *launchDate;
@property (nonatomic, copy, readonly) NSString *landingDate;
@property (nonatomic, copy, readonly) NSString *status;
@property (nonatomic, copy, readonly) NSNumber *maxSol;
@property (nonatomic, copy, readonly) NSString *maxDate;
@property (nonatomic, copy, readonly) NSNumber *numberOfPhotos;
@property (nonatomic, copy, readonly) NSArray<SMFSolDescription *> *solDescriptions;

- (instancetype)initWithName:(NSString *)name
                  launchDate:(NSString *)launchDate
                 landingDate:(NSString *)landingDate
                      status:(NSString *)status
                      maxSol:(NSNumber *)maxSol
                     maxDate:(NSString *)maxDate
              numberOfPhotos:(NSNumber *)numberOfPhotos
             solDescriptions:(NSArray<SMFSolDescription *> *)solDescriptions;
- (nullable instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
