//
//  MovieDetailViewModel.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"


/// view model for movie detail display
@interface MovieDetailViewModel : NSObject

@property (nonatomic, strong, readonly) Movie *movie;

-(instancetype)initWithMovie:(Movie *)movie;

@end
