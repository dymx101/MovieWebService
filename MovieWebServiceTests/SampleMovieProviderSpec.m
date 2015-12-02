//
//  SampleMovieProviderSpec.m
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


SpecBegin(SampleMovieProvider)

__block SampleMovieProvider *movieProvider = nil;

beforeEach(^{
    movieProvider = [[SampleMovieProvider alloc] init];
});


describe(@"Method", ^{
    
    it(@"can get some movies", ^{
        
        waitUntil(^(DoneCallback done) {
            
            [movieProvider getMovies:^(NSArray *movies) {
                
                if (movies.count > 0) {
                    expect(movies.firstObject).to.beKindOf([Movie class]);
                }
                
                done();
            }];
        });
        
    });
    
});


afterEach(^{
    movieProvider = nil;
});

SpecEnd
