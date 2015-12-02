//
//  DetailViewController.h
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDetailViewModel.h"

@class Movie;

/// view controller to show the detail of a movie
@interface MovieDetailViewController : UITableViewController

/// view model
@property (nonatomic, strong) MovieDetailViewModel  *viewModel;

@end
