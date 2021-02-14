//
//  ViewController.m
//  SimpleApp
//
//  Created by DuanZhu on 2020/8/8.
//  Copyright © 2020 DuanZhu. All rights reserved.
//

#import "ViewController.h"
#import "GTNormalTableViewCell.h"
#import "GTDetailViewController.h"

//UIView的生命周期
@interface TestView : UIView

@end

@implementation TestView

- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

//- (void)willMoveToSuperview:(nullable UIView *)newSuperview {
//    [super willMoveToSuperview: newSuperview];
//}
//- (void)didMoveToSuperview {
//    [super didMoveToSuperview];
//}
//- (void)willMoveToWindow:(nullable UIWindow *)newWindow {
//    [super willMoveToWindow: newWindow];
//}
//- (void)didMoveToWindow {
//    [super didMoveToWindow];
//}

@end

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (instancetype) init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView *view = [[UIView alloc] init]; //初始化
//    view.backgroundColor = [UIColor redColor]; // 设置背景颜色
//    view.frame = CGRectMake(100, 100, 100, 100); //设置布局
//    [self.view addSubview:view];
    
//    UIView *view2 = [[TestView alloc] init]; //初始化
//    view2.backgroundColor = [UIColor greenColor]; // 设置背景颜色
//    view2.frame = CGRectMake(150, 150, 100, 100); //设置布局
//    [self.view addSubview:view2];
//
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//    [view2 addGestureRecognizer:tapGesture];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    GTDetailViewController *controller = [[GTDetailViewController alloc] init];
    controller.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    [self.navigationController pushViewController:controller animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (GTNormalTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GTNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        cell = [[GTNormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    
    [cell layoutTableViewCell];
    return cell;
}

//- (void)pushController {
//
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor whiteColor];
//    viewController.navigationItem.title = @"Content";
//
//    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"rightTitle" style:UIBarButtonItemStylePlain target:self action:nil];
//
//    [self.navigationController pushViewController:viewController animated:YES];
    
//}

@end
