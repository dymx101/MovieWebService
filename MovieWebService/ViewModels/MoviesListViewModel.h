//
//  MoviesListViewModel.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieProvider.h"

/// view model for movies list display
@interface MoviesListViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray     *movies;

-(instancetype)initWithMovieProvider:(id<MovieProvider>)movieProvider;

-(void)loadMovies:(MoviesRetrievedBlock)completion;

@end
