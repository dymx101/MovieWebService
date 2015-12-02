//
//  MoviesListViewModelSpec.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "Movie.h"
#import "MovieDirector.h"
#import "MovieMaker.h"
#import "MovieActor.h"
#import "SampleMovieProvider.h"
#import "MoviesListViewModel.h"

SpecBegin(MoviesListViewModel)

describe(@"Normal", ^{
    
    it(@"should have movies after init", ^{
        
        SampleMovieProvider *provider = [[SampleMovieProvider alloc] init];
        
        MoviesListViewModel *viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:provider];
        
        waitUntil(^(DoneCallback done) {
            
            [viewModel loadMovies:^(NSArray *movies) {
                
                if (movies.count > 0) {
                    expect(movies.firstObject).to.beKindOf([Movie class]);
                }
                
                done();
            }];
        });
        
    });
    
});


SpecEnd
