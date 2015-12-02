//
//  ModelSpec.m
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



SpecBegin(Movie)

__block Movie *movie = nil;

beforeEach(^{
    movie = [[Movie alloc] init];
});

describe(@"Properties", ^{
    
    it(@"shoud have a 'name' property", ^{
        
        movie.name = @"tom";
        expect(movie.name).to.equal(@"tom");
        
        movie.name = nil;
        expect(movie.name).to.beNil;
    });
    
    it(@"shoud have a 'director' property", ^{
        
        MovieDirector *director = [MovieDirector new];
        movie.director = director;
        expect(movie.director).to.equal(director);
        
        movie.director = nil;
        expect(movie.director).to.beNil;
    });
    
    it(@"shoud have a 'grading' property", ^{
        
        movie.grading = MovieGrading_PG;
        expect(movie.grading).to.equal(MovieGrading_PG);
    });
    
    it(@"shoud have a 'languages' property", ^{
        
        NSArray *languages = @[@"English"];
        movie.languages = languages;
        expect(movie.languages).to.equal(languages);
        
        movie.languages = nil;
        expect(movie.languages).to.beNil;
    });
    
    it(@"shoud have a 'releaseDate' property", ^{
        
        NSDate *releaseDate = [NSDate date];
        movie.releaseDate = releaseDate;
        expect(movie.releaseDate).to.equal(releaseDate);
        
        movie.releaseDate = nil;
        expect(movie.releaseDate).to.beNil;
    });
    
    it(@"shoud have an 'actors' property", ^{
        
        NSArray *actors = @[[MovieActor new]];
        movie.actors = actors;
        expect(movie.actors).to.equal(actors);
        
        movie.actors = nil;
        expect(movie.actors).to.beNil;
    });
    
    it(@"shoud have a 'rating' property", ^{
        
        CGFloat rating = 8.0;
        movie.rating = rating;
        expect(movie.rating).to.equal(rating);
    });
    
});

describe(@"Method", ^{
    it(@"returns the proper string for grading", ^{
        
        NSString *gradingString = [Movie stringWithGrading:MovieGrading_G];
        expect(gradingString).to.equal(@"G");
    });
    
    it(@"should be okay after init with data", ^{
        NSDictionary *data = @{
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
        
        movie = [[Movie alloc] initWithData:data];
        
        expect(movie.grading).to.equal(3);
        expect(movie.nominated).to.equal(YES);
        expect(movie.name).to.equal(@"Argo");
        expect(movie.rating).to.equal(7.8);
        
        expect(movie.languages).toNot.beNil;
        expect(movie.releaseDate).toNot.beNil;
        expect(movie.actors).toNot.beNil;
        expect(movie.director).toNot.beNil;
    });
});


afterEach(^{
    movie = nil;
});

SpecEnd
