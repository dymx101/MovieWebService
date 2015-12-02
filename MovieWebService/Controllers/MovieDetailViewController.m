//
//  DetailViewController.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieDetailViewController.h"
#import "Movie.h"
#import "MovieDirector.h"
#import "MovieActor.h"
#import "MovieDetailLessCell.h"
#import "MovieDetailMoreCell.h"

@interface MovieDetailViewController () {
    BOOL    _showMore;
}

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.tableFooterView = [UIView new];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        MovieDetailLessCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieDetailLessCell" forIndexPath:indexPath];
        
        [cell setMovie:_viewModel.movie];
        
        return cell;
        
    } else if (indexPath.row == 1) {
        
        if (_showMore) {
            
            MovieDetailMoreCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieDetailMoreCell" forIndexPath:indexPath];
            
            [cell setMovie:_viewModel.movie];
            
            return cell;
            
        } else {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tapToSeeMoreCell" forIndexPath:indexPath];
            
            return cell;
        }
        
    }
    
    return [UITableViewCell new];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1 && !_showMore) {
        _showMore = YES;
        
        [tableView reloadData];
    }
}

@end
