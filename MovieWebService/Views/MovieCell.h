//
//  MovieCell.h
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>

@class Movie;

/// cell for movie list table view
@interface MovieCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *gradingLabel;
@property (strong, nonatomic) IBOutlet UILabel *ratingLabel;

- (void)setMovie:(Movie *)movie;

@end
