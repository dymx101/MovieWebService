//
//  NSObject+ValueType.m
//  MovieWebService
//
//  Created by Dong Yiming on 15/12/2.
//  Copyright © 2015年 Tan, Michael (Agoda). All rights reserved.
//

#import "NSObject+ValueType.h"

@implementation NSObject (ValueType)

-(NSString *)stringValueEnsured {
    
    if ([self isKindOfClass:[NSString class]]) {
        return (NSString *)self;
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)self stringValue];
    }
    
    return nil;
}

-(NSNumber *)numberValueEnsured {
    
    if ([self isKindOfClass:[NSNumber class]]) {
        return (NSNumber *)self;
    } else if ([self respondsToSelector:@selector(doubleValue)]) {
        return [self performSelector:@selector(doubleValue) withObject:nil];
    }

    return nil;
}

-(id)valueOfClass:(Class)theClass {
    if (theClass == nil) {
        return nil;
    }
    
    return [self isKindOfClass:theClass] ? self : nil;
}

@end
