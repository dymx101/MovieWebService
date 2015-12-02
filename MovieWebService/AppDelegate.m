//
//  AppDelegate.m
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "AppDelegate.h"
#import "MoviesViewController.h"
#import "SampleMovieProvider.h"
#import "Movie.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /// customize navigation bar
    UINavigationController *rootNC = (UINavigationController *)self.window.rootViewController;
    rootNC.navigationBar.translucent = NO;

    /// setup view model for the movies list view controller
    SampleMovieProvider *movieProvider = [SampleMovieProvider new];
    MoviesViewController *moviesVC = rootNC.viewControllers.firstObject;
    moviesVC.viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:movieProvider];
    
    return YES;
}

@end
