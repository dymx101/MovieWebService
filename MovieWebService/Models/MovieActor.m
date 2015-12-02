//
//  Actor.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieActor.h"


@implementation MovieActor

- (id)initWithData:(NSDictionary *)data {
    
    self = [super initWithData:data];
    if (self) {
        _screenName = [data[@"screenName"] stringValueEnsured];
    }
    
    return self;
}

@end
