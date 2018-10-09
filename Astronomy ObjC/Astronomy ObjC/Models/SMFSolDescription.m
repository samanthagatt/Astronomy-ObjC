//
//  SMFSolDescription.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFSolDescription.h"

@implementation SMFSolDescription

- (instancetype)initWithSol:(NSNumber *)sol totalPhotos:(NSNumber *)totalPhotos cameras:(NSArray<NSString *> *)cameras
{
    self = [super init];
    if (self) {
        _sol = sol;
        _totalPhotos = totalPhotos;
        _cameras = cameras;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSNumber *sol = dictionary[@"sol"];
    NSNumber *totalPhotos = dictionary[@"total_photos"];
    NSArray<NSString *> *cameras = dictionary[@"cameras"];
    
    if (!sol || !totalPhotos || !cameras) {
        return nil;
    }
    
    return [self initWithSol:sol totalPhotos:totalPhotos cameras:cameras];
}

@end
