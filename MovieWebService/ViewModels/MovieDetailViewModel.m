//
//  MovieDetailViewModel.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieDetailViewModel.h"

@implementation MovieDetailViewModel

-(instancetype)initWithMovie:(Movie *)movie {
    self = [super init];
    if (self) {
        _movie = movie;
    }
    return self;
}

@end
