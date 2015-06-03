//
//  MyStructProvider.m
//  JSPatchDemo
//
//  Created by Qiu WeiJia on 15/6/3.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import "MyStructProvider.h"
#import "JPTestObject.h"

@implementation MyStructProvider

- (size_t)sizeOfStruct:(NSString*)structName
{
    if ([structName rangeOfString:@"MyStruct"].location==1) {
        return sizeof(MyStruct);
    }
    
    @throw [NSException exceptionWithName:@"Custome Struct Provider Exception" reason:[NSString stringWithFormat:@"Unsupported struct %@", structName] userInfo:nil];
}

- (NSDictionary*)dictOfStruct:(void*)structData name:(NSString*)structName
{
    if (!structData) {
        return nil;
    }
    
    if ([structName rangeOfString:@"MyStruct"].location==1) {
        MyStruct *s = (MyStruct*)structData;
        return @{@"p1":@(s->p1),@"p2":@(s->p2)};
    }
    
    @throw [NSException exceptionWithName:@"Custome Struct Provider Exception" reason:[NSString stringWithFormat:@"Unsupported struct %@", structName] userInfo:nil];
}

- (size_t)structData:(void*)structData OfDict:(NSDictionary*)dic name:(NSString*)structName;
{
    if (!structData || !dic) {
        return 0;
    }
    
    if ([structName rangeOfString:@"MyStruct"].location==1) {
        MyStruct *s = (MyStruct*)structData;
        s->p1 = [[dic objectForKey:@"p1"] integerValue];
        s->p2 = [[dic objectForKey:@"p2"] integerValue];
    }
    
    return 0;
}

@end;