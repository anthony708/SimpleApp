//
//  SceneDelegate.m
//  SimpleApp
//
//  Created by DuanZhu on 2020/8/8.
//  Copyright © 2020 DuanZhu. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

    UIWindowScene *windowScene = (UIWindowScene *) scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    ViewController *viewController = [[ViewController alloc] init];
    
//    UINavigationController *navigationController = [[UINavigationController alloc]
//        initWithRootViewController:viewController];

//    UIViewController *controller1 = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor redColor];
    viewController.tabBarItem.title = @"News";
    viewController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];

    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title = @"Videos";
    controller2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];

    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor greenColor];
    controller3.tabBarItem.title = @"Recommend";
    controller3.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];

    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    controller4.tabBarItem.title = @"Me";
    controller4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];

    [tabbarController setViewControllers:@[viewController, controller2, controller3, controller4]];
    
    UINavigationController *navigationController = [[UINavigationController alloc]
    initWithRootViewController:tabbarController];

//    self.window.rootViewController = tabbarController;
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
