//
//  AppDelegate.m
//  JPNavigationControllerDemo
//
//  Hello! I am NewPan from Guangzhou of China, Glad you could use my framework, If you have any question or wanna to contact me, please open https://github.com/Chris-Pan or http://www.jianshu.com/users/e2f2d779c022/latest_articles
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JPNavigationControllerKit.h"
#import "JPFourthVc.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 启动图片延时: 2 秒
    [NSThread sleepForTimeInterval:2];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [sb instantiateInitialViewController];
    
    JPFourthVc *four = [JPFourthVc new];
    
    JPNavigationController *nav1 = [[JPNavigationController alloc]initWithRootViewController:vc];
    JPNavigationController *nav2 = [[JPNavigationController alloc]initWithRootViewController:four];
    nav1.tabBarItem.image = [UIImage imageNamed:@"home"];
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_se"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    nav2.tabBarItem.image = [UIImage imageNamed:@"more"];
    nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"more_se"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    tabBar.viewControllers  = @[nav1, nav2];
    
    self.window.rootViewController = tabBar;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
