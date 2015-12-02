//
//  Film.h
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "DictionaryModel.h"
#import "Nominatable.h"

/// Film rating
typedef NS_ENUM(NSUInteger, MovieGrading) {
    MovieGrading_G = 0,
    MovieGrading_PG,
    MovieGrading_PG13,
    MovieGrading_R,
    MovieGrading_NC17
} ;


@class MovieDirector;



/// The Movie Model
@interface Movie : NSObject <Nominatable, DictionaryModel>

@property (nonatomic, copy) NSString            *name;
@property (nonatomic, strong) MovieDirector     *director;
@property (nonatomic, assign) MovieGrading       grading;
@property (nonatomic, copy) NSArray             *languages;
@property (nonatomic, copy) NSDate              *releaseDate;
@property (nonatomic, copy) NSArray             *actors;
@property (nonatomic, assign) CGFloat           rating;

+(NSString *)stringWithGrading:(MovieGrading)grading;

@end
