//
//  Movie.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "Movie.h"
#import "MovieActor.h"
#import "MovieDirector.h"

@implementation Movie

@synthesize nominated = _nominated;

- (id)initWithData:(NSDictionary *)data {
    
    self = [super init];
    
    if (self && [data isKindOfClass:[NSDictionary class]]) {
        
        _grading = [data[@"filmRating"] doubleValue];
        _languages = [data[@"languages"] valueOfClass:[NSArray class]];
        _nominated = [data[@"nominated"] boolValue];
        
        _releaseDate = [NSDate dateWithTimeIntervalSince1970:[data[@"releaseDate"] doubleValue]];
        _name = [data[@"name"] stringValueEnsured];
        
        _rating = [[data objectForKey:@"rating"] doubleValue];
        _director = [[MovieDirector alloc] initWithData:data[@"director"]];
        
        
        NSArray *castsData = [data[@"cast"] valueOfClass:[NSArray class]];
        if (castsData) {
            NSMutableArray *castsList = [NSMutableArray arrayWithCapacity:castsData.count];
            
            [castsData enumerateObjectsUsingBlock:^(NSDictionary *  _Nonnull castData, NSUInteger idx, BOOL * _Nonnull stop) {
                MovieActor *actor = [[MovieActor alloc] initWithData:castData];
                if (actor) {
                    [castsList addObject:actor];
                }
            }];
            
            self.actors = castsList;
        }
    }
    
    return self;
}


+(NSString *)stringWithGrading:(MovieGrading)grading {
    static NSArray *strings = nil;
    if (strings == nil) {
        strings = @[@"G", @"PG", @"PG13", @"R", @"NC17"];
    }
    
    if (grading < strings.count) {
        return strings[grading];
    }
    
    return @"";
}



@end
