//
//  MoviesListViewModel.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "MoviesListViewModel.h"

@interface MoviesListViewModel () {
    id<MovieProvider>   _provider;
}

@end

@implementation MoviesListViewModel

-(instancetype)initWithMovieProvider:(id<MovieProvider>)movieProvider {
    self = [super init];
    if (self) {
        _provider = movieProvider;
    }
    return self;
}

-(void)loadMovies:(MoviesRetrievedBlock)completion {
    __weak typeof(self) weakSelf = self;
    [_provider getMovies:^(NSArray *movies) {
        __strong typeof(self) strongSelf = weakSelf;
        strongSelf->_movies = movies;
        
        if (completion) {
            completion(movies);
        }
    }];
}

@end
