//
//  SMFMarsRover.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFMarsRover.h"

@implementation SMFMarsRover

- (instancetype)initWithName:(NSString *)name
                  launchDate:(NSString *)launchDate
                 landingDate:(NSString *)landingDate
                      status:(NSString *)status
                      maxSol:(NSNumber *)maxSol
                     maxDate:(NSString *)maxDate
              numberOfPhotos:(NSNumber *)numberOfPhotos
             solDescriptions:(NSArray<SMFSolDescription *> *)solDescriptions
{
    self = [super init];
    if (self) {
        _name = name;
        _launchDate = launchDate;
        _landingDate = landingDate;
        _status = status;
        _maxSol = maxSol;
        _maxDate = maxDate;
        _numberOfPhotos = numberOfPhotos;
        _solDescriptions = solDescriptions;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *name = dictionary[@"name"];
    NSString *launchDate = dictionary[@"launch_date"];
    NSString *landingDate = dictionary[@"landing_date"];
    NSString *status = dictionary[@"status"];
    NSNumber *maxSol = dictionary[@"max_sol"];
    NSString *maxDate = dictionary[@"max_date"];
    NSNumber *numberOfPhotos = dictionary[@"total_photos"];
    NSArray<SMFSolDescription *> *solDescriptions = dictionary[@"photos"];
    
    if (!name || !launchDate || !landingDate || !status || !maxSol || !maxDate || !numberOfPhotos || solDescriptions) {
        return nil;
    }
    
    return [self initWithName:name launchDate:launchDate landingDate:landingDate status:status maxSol:maxSol maxDate:maxDate numberOfPhotos:numberOfPhotos solDescriptions:solDescriptions];
}

@end
