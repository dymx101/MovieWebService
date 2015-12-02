//
//  Nominatable.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

/// defines something which can be nominated
@protocol Nominatable <NSObject>
@property (nonatomic, assign, getter = isNominated) BOOL nominated;
@end
