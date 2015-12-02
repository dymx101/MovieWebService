//
//  MovieMakerSpec.m
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



SpecBegin(MovieMaker)

__block MovieMaker *movieMaker = nil;

beforeEach(^{
    movieMaker = [[MovieMaker alloc] init];
});

describe(@"Properties", ^{
    
    it(@"shoud have a 'name' property", ^{
        
        movieMaker.name = @"tom";
        expect(movieMaker.name).to.equal(@"tom");
        
        movieMaker.name = nil;
        expect(movieMaker.name).to.beNil;
    });
    
    it(@"shoud have a 'dateOfBirth' property", ^{
        
        NSDate *dateOfBirth = [NSDate date];
        movieMaker.dateOfBirth = dateOfBirth;
        expect(movieMaker.dateOfBirth).to.equal(dateOfBirth);
        
        movieMaker.dateOfBirth = nil;
        expect(movieMaker.dateOfBirth).to.beNil;
    });
    
    it(@"shoud have an 'biography' property", ^{
        
        movieMaker.biography = @"Bla bla bla...";
        expect(movieMaker.biography).to.equal(@"Bla bla bla...");
        
        movieMaker.biography = nil;
        expect(movieMaker.biography).to.beNil;
    });
    
    it(@"shoud have a 'nominated' property", ^{
        
        movieMaker.nominated = YES;
        expect(movieMaker.isNominated).to.equal(YES);
    });
    
});

describe(@"Method", ^{
    
    it(@"should be okay after init with data", ^{
        NSDictionary *data = @{
                               @"dateOfBirth": @82684800,
                               @"nominated": @1,
                               @"name": @"Ben Affleck",
                               @"biography": @"Benjamin Geza Affleck was born on August 15, 1972 in Berkeley, California, USA but raised in Cambridge, Massachusetts, USA."
                               };
        
        movieMaker = [[MovieMaker alloc] initWithData:data];
        
        expect(movieMaker.name).to.equal(@"Ben Affleck");
        expect(movieMaker.biography).to.equal(@"Benjamin Geza Affleck was born on August 15, 1972 in Berkeley, California, USA but raised in Cambridge, Massachusetts, USA.");
        expect(movieMaker.isNominated).to.equal(YES);
        
        expect(movieMaker.dateOfBirth).toNot.beNil;
    });
});


afterEach(^{
    movieMaker = nil;
});

SpecEnd
