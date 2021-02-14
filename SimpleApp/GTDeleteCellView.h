//
//  GTDeleteCellView.h
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/14.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GTDeleteCellView : UIView

- (void)showDeleteViewFromPoint:(CGPoint)point clickBlock:(dispatch_block_t) clickBlock;

@end

NS_ASSUME_NONNULL_END
