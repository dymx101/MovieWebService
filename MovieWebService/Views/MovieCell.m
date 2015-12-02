//
//  MovieCell.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieCell.h"
#import "Movie.h"

@implementation MovieCell


- (void)setMovie:(Movie *)movie {
    
    self.nameLabel.text = movie.name;

    self.dateLabel.text = [self stringFromDate:movie.releaseDate];
    
    self.gradingLabel.text = [Movie stringWithGrading:movie.grading];
    
    self.ratingLabel.text = [@(movie.rating) stringValueEnsured];
}


- (NSString *)stringFromDate:(NSDate *)date {
    
    NSCalendar* cal = [NSCalendar currentCalendar];
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    [fmt setCalendar:cal];
    fmt.dateFormat = @"MMM dd, yyyy";
    
    return [fmt stringFromDate:date];
}

@end
