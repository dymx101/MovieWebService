//
//  SampleMovieProvider.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "SampleMovieProvider.h"
#import "Movie.h"

@interface SampleMovieProvider () {
    NSDictionary *_data;
}

@end


@implementation SampleMovieProvider

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

-(void)doInit {
    _data = @{
                           @"filmRating" : @3,
                           @"languages": @[
                                   @"English",
                                   @"Thai"
                                   ],
                           @"nominated": @1,
                           @"releaseDate": @1350000000,
                           @"cast": @[
                                   @{
                                       @"dateOfBirth": @-436147200,
                                       @"nominated": @1,
                                       @"name": @"Bryan Cranston",
                                       @"screenName": @"Jack Donnell",
                                       @"biography": @"Bryan Lee Cranston is an American actor, voice actor, writer and director."
                                       }
                                   ],
                           @"name": @"Argo",
                           @"rating": @7.8,
                           @"director": @{
                                   @"dateOfBirth": @82684800,
                                   @"nominated": @1,
                                   @"name": @"Ben Affleck",
                                   @"biography": @"Benjamin Geza Affleck was born on August 15, 1972 in Berkeley, California, USA but raised in Cambridge, Massachusetts, USA."
                                   }
                           };
}


-(void)getMovies:(MoviesRetrievedBlock)completion {
    Movie *movie = [[Movie alloc] initWithData:_data];
    
    if (completion) {
        completion(@[movie]);
    }
}

@end
