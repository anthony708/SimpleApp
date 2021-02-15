//
//  GTListItem.h
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 列表结构化数据
 */
@interface GTListItem : NSObject

@property(nonatomic, strong, readwrite) NSString *category;
@property(nonatomic, strong, readwrite) NSString *picURL;
@property(nonatomic, strong, readwrite) NSString *uniqueKey;
@property(nonatomic, strong, readwrite) NSString *title;
@property(nonatomic, strong, readwrite) NSString *date;
@property(nonatomic, strong, readwrite) NSString *authorName;
@property(nonatomic, strong, readwrite) NSString *articleURL;

-(void) configWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
