//
//  GTListItem.m
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import "GTListItem.h"

@implementation GTListItem

#pragma mark - NSSecurityCoding

- (nullable instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.category = [coder decodeObjectForKey:@"category"];
        self.picURL = [coder decodeObjectForKey:@"picURL"];
        self.uniqueKey = [coder decodeObjectForKey:@"uniqueKey"];
        self.title = [coder decodeObjectForKey:@"title"];
        self.date = [coder decodeObjectForKey:@"date"];
        self.authorName = [coder decodeObjectForKey:@"authorName"];
        self.articleURL = [coder decodeObjectForKey:@"articleURL"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.category forKey:@"category"];
    [coder encodeObject:self.picURL forKey:@"picURL"];
    [coder encodeObject:self.uniqueKey forKey:@"uniqueKey"];
    [coder encodeObject:self.title forKey:@"title"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.authorName forKey:@"authorName"];
    [coder encodeObject:self.articleURL forKey:@"articleURL"];
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

#pragma mark - public method

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
