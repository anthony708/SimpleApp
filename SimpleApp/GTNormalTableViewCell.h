//
//  GTNormalTableViewCell.h
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/13.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GTNormalTableViewCellDelegate <NSObject>

- (void)tableViewCell: (UITableViewCell *) tableViewCell clickDeleteButton: (UIButton *) deleteButton;

@end

@interface GTNormalTableViewCell : UITableViewCell

@property(nonatomic, weak, readwrite) id<GTNormalTableViewCellDelegate> delegate;

- (void) layoutTableViewCell;

@end

NS_ASSUME_NONNULL_END
