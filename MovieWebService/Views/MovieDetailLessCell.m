//
//  MovieDetailLessCell.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieDetailLessCell.h"
#import "MovieDirector.h"

@implementation MovieDetailLessCell

- (void)setMovie:(Movie *)movie {
    
    self.directorNameLabel.text = movie.director.name;
}

@end
