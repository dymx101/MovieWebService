//
//  NSObject+ValueType.h
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ValueType)

/// return a 100% safe string value, return nil if couldn't
-(NSString *)stringValueEnsured;

/// return value of theClass type, if type not match return nil
-(id)valueOfClass:(Class)theClass;

@end
