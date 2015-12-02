//
//  GenericRole.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieMaker.h"

@implementation MovieMaker

@synthesize name = _name
, biography = _biography
, dateOfBirth = _dateOfBirth
, nominated = _nominated;

- (id)initWithData:(NSDictionary *)data {
    
    self = [super init];
    if (self && [data isKindOfClass:[NSDictionary class]]) {
        _name = [data[@"name"] stringValueEnsured];
        _biography = [data[@"biography"] stringValueEnsured];
        _dateOfBirth = [NSDate dateWithTimeIntervalSince1970:[data[@"dateOfBirth"] doubleValue]];
        _nominated = [data[@"nominated"] boolValue];
    }
    
    return self;
}

@end
