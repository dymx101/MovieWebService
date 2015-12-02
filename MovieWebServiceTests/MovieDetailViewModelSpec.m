//
//  MovieDetailViewModelSpec.m
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
#import "MovieDetailViewModel.h"

SpecBegin(MovieDetailViewModel)

describe(@"Normal", ^{
    
    it(@"should have the right movie after init", ^{
        
        Movie *movie = [Movie new];
        MovieDetailViewModel *viewModel = [[MovieDetailViewModel alloc] initWithMovie:movie];
        
        expect(viewModel.movie).to.equal(movie);
        
    });
    
});


SpecEnd
