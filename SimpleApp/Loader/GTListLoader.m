//
//  GTListLoader.m
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import "GTListLoader.h"
#import <AFNetworking.h>

@implementation GTListLoader

-(void)loadListData {
    
    NSString *urlString = @"https://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json";
//    NSURL *listURL = [NSURL URLWithString:urlString];
    
    [[AFHTTPSessionManager manager] GET:urlString parameters:nil headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
    }];
    
//    __unused NSURLRequest *listRequest = [NSURLRequest requestWithURL:listURL];
//
//    NSURLSession *session = [NSURLSession sharedSession];
//
//    NSURLSessionTask *dataTask = [session dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"");
//    }];
//
//    [dataTask resume];
//
//    NSLog(@"");
}

@end
