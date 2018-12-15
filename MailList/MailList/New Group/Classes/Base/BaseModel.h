//
//  BaseModel.h
//  MailList
//
//  Created by 李非非 on 2018/12/15.
//  Copyright © 2018年 Fly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseModel : NSObject
#pragma mark - 类方法 构造对象
+(instancetype)modelWithDict:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END
