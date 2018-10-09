//
//  SMFMarsPhoto.m
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SMFMarsPhoto.h"

@implementation SMFMarsPhoto

- (instancetype)initWithIdentifier:(NSNumber *)identifier
                               sol:(NSNumber *)sol
                            camera:(SMFCamera *)camera
                         earthDate:(NSDate *)earthDate
                          imageURL:(NSURL *)imageURL
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSNumber *identifier = dictionary[@"id"];
    NSNumber *sol = dictionary[@"sol"];
    SMFCamera *camera = dictionary[@"camera"];
    NSDate *earthDate = dictionary[@"earth_date"];
    NSURL *imageURL = dictionary[@"img_src"];
    
    if (!identifier || !sol || !camera || !earthDate || !imageURL) {
        return nil;
    }
    
    return [self initWithIdentifier:identifier sol:sol camera:camera earthDate:earthDate imageURL:imageURL];
}

@end
