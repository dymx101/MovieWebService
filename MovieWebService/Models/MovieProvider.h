//
//  MovieProvider.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MoviesRetrievedBlock)(NSArray *movies);

/// Movie provider interface
@protocol MovieProvider <NSObject>
@required
/// request and return the movie
-(void)getMovies:(MoviesRetrievedBlock)completion;
@end
