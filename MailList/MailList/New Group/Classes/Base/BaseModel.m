//
//  BaseModel.m
//  MailList
//
//  Created by 李非非 on 2018/12/15.
//  Copyright © 2018年 Fly. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel
#pragma mark - 实例方法 构造对象
-(instancetype)initWithDict:(NSDictionary *)dict{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)modelWithDict:(NSDictionary *)dict{
    return [[super alloc]initWithDict:dict];
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}
@end
