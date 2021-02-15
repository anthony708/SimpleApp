//
//  GTListItem.m
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import "GTListItem.h"

@implementation GTListItem


-(void) configWithDictionary:(NSDictionary *)dictionary {
    
#warning check whether type was matched
    self.category = [dictionary objectForKey:@"category"];
    self.picURL = [dictionary objectForKey:@"thumbnail_pic_s"];
    self.uniqueKey = [dictionary objectForKey:@"uniquekey"];
    self.title = [dictionary objectForKey:@"title"];
    self.date = [dictionary objectForKey:@"date"];
    self.authorName = [dictionary objectForKey:@"author_name"];
    self.articleURL = [dictionary objectForKey:@"url"];
    
}

@end
