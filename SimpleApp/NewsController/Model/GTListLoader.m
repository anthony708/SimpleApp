//
//  GTListLoader.m
//  SimpleApp
//
//  Created by DuanZhu on 2021/2/15.
//  Copyright © 2021 DuanZhu. All rights reserved.
//

#import "GTListLoader.h"
#import <AFNetworking.h>
#import "GTListItem.h"

@implementation GTListLoader

- (void)loadListDataWithFinishBlock:(GTListLoaderFinishBlock)finishBlock {
    
    NSString *urlString = @"https://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json";
    NSURL *listURL = [NSURL URLWithString:urlString];
    
//    [[AFHTTPSessionManager manager] GET:urlString parameters:nil headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"");
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"");
//    }];
    
    __unused NSURLRequest *listRequest = [NSURLRequest requestWithURL:listURL];

    NSURLSession *session = [NSURLSession sharedSession];

    __weak typeof(self) wself = self;
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        __strong typeof(wself) strongSelf = wself;
        NSError *jsonError;
        id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
#warning check whether type was matched
        NSArray *dataArray = [((NSDictionary *) [((NSDictionary *)jsonObj) objectForKey:@"result"]) objectForKey:@"data"];
        NSMutableArray *listItemArray = @[].mutableCopy;
        for (NSDictionary *info in dataArray) {
            GTListItem *listItem = [[GTListItem alloc] init];
            [listItem configWithDictionary:info];
            [listItemArray addObject:listItem];
        }
        
        [self _archiveListDataWithArray:listItemArray.copy];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if (finishBlock) {
                finishBlock(error == nil, listItemArray.copy);
            }
        });
        
    }];

    [dataTask resume];
}

- (void)_archiveListDataWithArray:(NSArray<GTListItem *> *)array {

    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSLog(@"");
    NSString *cachePath = [pathArray firstObject];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // create directory
    NSString *dataPath = [cachePath stringByAppendingPathComponent:@"GTData"];
    NSError *createError;
    [fileManager createDirectoryAtPath:dataPath withIntermediateDirectories:YES attributes:nil error:&createError];
    
    // create file
    NSString *listDataPath = [dataPath stringByAppendingPathComponent:@"list"];
    
//    NSData *listData = [NSKeyedArchiver archivedDataWithRootObject:array];
    NSData *listData = [NSKeyedArchiver archivedDataWithRootObject:array requiringSecureCoding:YES error:nil];
    
//    NSData *listData = [@"abc" dataUsingEncoding:NSUTF8StringEncoding];
    [fileManager createFileAtPath:listDataPath contents:listData attributes:nil];
    
    // search file
    BOOL fileExist = [fileManager fileExistsAtPath:listDataPath];
    
    // delete file
//    if (fileExist) {
//        [fileManager removeItemAtPath:listDataPath error:nil];
//    }
    
    NSLog(@"");
    
    // add on data
//    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:listDataPath];
//    [fileHandle seekToEndOfFile];
//    [fileHandle writeData:[@"def" dataUsingEncoding:NSUTF8StringEncoding]];
//
//    [fileHandle synchronizeFile];
//    [fileHandle closeFile];
}

@end
