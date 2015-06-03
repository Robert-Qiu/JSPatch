//
//  JPEngineAttributes.h
//  JSPatch
//
//  Created by Qiu WeiJia on 15/6/3.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomStructProvider <NSObject>

- (size_t)sizeOfStruct:(NSString*)structName;
- (NSDictionary*)dictOfStruct:(void*)structData name:(NSString*)structName;
- (size_t)structData:(void*)structData OfDict:(NSDictionary*)dic name:(NSString*)structName;
//- (IMP)customStructMehtodImpl:(Class)cls sel:(SEL)sel name:(NSString*)structName;

@end

@interface JPEngineAttributes : NSObject

@property id<CustomStructProvider> customStructProvider;

@end
