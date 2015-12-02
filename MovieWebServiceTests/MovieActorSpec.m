//
//  MovieActorSpec.m
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



SpecBegin(MovieActor)

__block MovieActor *movieActor = nil;

beforeEach(^{
    movieActor = [[MovieActor alloc] init];
});

describe(@"Properties", ^{
    
    it(@"shoud have a 'screenName' property", ^{
        
        movieActor.screenName = @"tom";
        expect(movieActor.screenName).to.equal(@"tom");
        
        movieActor.screenName = nil;
        expect(movieActor.screenName).to.beNil;
    });
    
});


afterEach(^{
    movieActor = nil;
});

SpecEnd
