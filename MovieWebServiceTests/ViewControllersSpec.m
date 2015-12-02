//
//  ViewControllersSpec.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "Movie.h"
#import "MovieDirector.h"
#import "MovieMaker.h"
#import "MovieActor.h"
#import "SampleMovieProvider.h"
#import "MoviesViewController.h"
#import "MovieDetailViewController.h"

SpecBegin(ViewControllers)


describe(@"MoviesViewController", ^{
    
    it(@"should have a view model", ^{
        
        MoviesViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MoviesViewController"];
        
        MoviesListViewModel *viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:[SampleMovieProvider new]];
        
        vc.viewModel = viewModel;
        
        expect(vc.viewModel).to.equal(viewModel);
    });
    
});


describe(@"MovieDetailViewController", ^{
    
    it(@"should have a view model", ^{
        
        MovieDetailViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MovieDetailViewController"];
        
        MovieDetailViewModel *viewModel = [[MovieDetailViewModel alloc] initWithMovie:[Movie new]];
        
        vc.viewModel = viewModel;
        
        expect(vc.viewModel).to.equal(viewModel);
    });
    
});


SpecEnd
