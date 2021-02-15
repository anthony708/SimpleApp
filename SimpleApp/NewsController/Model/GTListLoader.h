//
//  GTListLoader.h
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GTListItem;

NS_ASSUME_NONNULL_BEGIN

typedef void(^GTListLoaderFinishBlock)(BOOL success, NSArray<GTListItem *> *dataArray);

/**
 列表请求
 */
@interface GTListLoader : NSObject

- (void)loadListDataWithFinishBlock:(GTListLoaderFinishBlock)finishBlock;

@end

NS_ASSUME_NONNULL_END
