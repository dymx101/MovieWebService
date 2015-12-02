//
//  GenericRole.h
//  MovieWebService
//
//  Created by Tan, Michael (Agoda) on 3/10/14.
//  Copyright (c) 2014 Tan, Michael (Agoda). All rights reserved.
//

#import "DictionaryModel.h"
#import "Nominatable.h"

/// defines characteristic of the human kind
@protocol Human <NSObject>
@property (nonatomic, copy) NSString    *name;
@property (nonatomic, copy) NSDate      *dateOfBirth;
@property (nonatomic, copy) NSString    *biography;
@end


/// movie maker model, represent a guy who participant in making a movie
@interface MovieMaker : NSObject <Human, Nominatable, DictionaryModel>

@end
