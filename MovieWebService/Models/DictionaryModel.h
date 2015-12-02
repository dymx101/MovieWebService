//
//  JsonModel.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+ValueType.h"

/// defines the model which can be init by a dicionary data
@protocol DictionaryModel <NSObject>
@required
- (id)initWithData:(NSDictionary *)data;
@end
