//
//  MovieDetailMoreCell.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

/// cell for movie detail table view, showing the 'more' part
@interface MovieDetailMoreCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *actorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *actorScreenNameLabel;

- (void)setMovie:(Movie *)movie;

@end
