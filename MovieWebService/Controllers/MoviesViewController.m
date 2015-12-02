//
//  ViewController.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "MoviesViewController.h"
#import "MovieCell.h"
#import "MovieDetailViewController.h"
#import "MovieDetailViewModel.h"

@interface MoviesViewController ()

@end

@implementation MoviesViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.navigationItem.title = @"Root View Controller";
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.tableFooterView = [UIView new];
    
    __weak typeof (self) weakSelf = self;
    [_viewModel loadMovies:^(NSArray *movies) {
        [weakSelf.tableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _viewModel.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
   
    [cell setMovie:_viewModel.movies[indexPath.row]];
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//	[tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
//    [detailViewController setData:[films objectAtIndex:indexPath.row]];
//    [self.navigationController pushViewController:detailViewController animated:YES];
//}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetail"]
        && [segue.destinationViewController isKindOfClass:[MovieDetailViewController class]]) {
        MovieDetailViewController *destVC = (MovieDetailViewController *)segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        Movie *movie = _viewModel.movies[indexPath.row];
        MovieDetailViewModel *viewModel = [[MovieDetailViewModel alloc] initWithMovie:movie];
        destVC.viewModel = viewModel;
    }
}

@end
