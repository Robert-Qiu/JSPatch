//
//  MyStructProvider.h
//  JSPatchDemo
//
//  Created by Qiu WeiJia on 15/6/3.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JPEngineAttributes.h"

@interface MyStructProvider : NSObject<CustomStructProvider>

- (size_t)sizeOfStruct:(NSString*)structName;
- (NSDictionary*)dictOfStruct:(void*)structData name:(NSString*)structName;
- (size_t)structData:(void*)structData OfDict:(NSDictionary*)dic name:(NSString*)structName;

@end