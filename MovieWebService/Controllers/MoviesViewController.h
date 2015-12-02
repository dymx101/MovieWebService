//
//  ViewController.h
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoviesListViewModel.h"

@class MovieCell;

/// view controller to display movies list
@interface MoviesViewController : UITableViewController

/// view model
@property (nonatomic, strong) MoviesListViewModel *viewModel;

@end
