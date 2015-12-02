//
//  MovieDetailMoreCell.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieDetailMoreCell.h"
#import "MovieActor.h"

@implementation MovieDetailMoreCell

- (void)setMovie:(Movie *)movie {
    
    MovieActor *actor = movie.actors.firstObject;
    
    self.actorNameLabel.text = actor.name;
    self.actorScreenNameLabel.text = actor.screenName;
    
}

@end
