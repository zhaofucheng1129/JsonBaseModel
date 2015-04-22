//
//  AppDelegate.m
//  TestJsonBaseModel
//
//  Created by ZhaoFucheng on 14-12-9.
//  Copyright (c) 2014年 ZhaoFucheng. All rights reserved.
//

#import "AppDelegate.h"
#import "Country.h"
#import "MyCategory.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *json = @"{\"没有的属性\":\"不会报错\",\"parentId\":1, \"categoryId\": 2, \"CategoryName\":\"哈哈\", \"sortId\":3,\"childCategory\":4,\"icons\":5,\"Aaa_bbb\":10.25,\"country\":{\"countryId\":11111,\"code\":\"7897987897\",\"name\":\"adsfasdfasdf\"}}";
    //    NSDictionary * dict = @{@"parentId":@1,@"categoryId":@2,@"CategoryName":@"哈哈",@"sortId":@3,@"childCategory":@4,@"icons":@5,@"Aaa_bbb":@10.25,@"country":@{@"countryId":@11111,@"code":@"798798798",@"name":@"adfsdfsadfsd"}};
    MyCategory *cat = [[MyCategory alloc] initWithString:json error:nil];
    NSLog(@"这尼玛是我输出的==================%@",[cat description]);
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:cat];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"Category"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSData *cate = [[NSUserDefaults standardUserDefaults] objectForKey:@"Category"];
    MyCategory *cat1 = [NSKeyedUnarchiver unarchiveObjectWithData:cate];
    NSLog(@"这尼玛是我输出的==================%d",[cat1 parentId]);
    
    NSDictionary * dict2 = @{@"parentId":[[NSNull alloc] init],@"categoryId":@101,@"CategoryName":@"尼玛",@"sortId":@301,@"childCategory":@406,@"icons":@508,@"Aaa_bbb":[[NSNull alloc] init]};
    MyCategory *category1 = [[MyCategory alloc] initWithDictionary:dict2 error:nil];
    
    NSData * data222 = [NSKeyedArchiver archivedDataWithRootObject:category1];
    [[NSUserDefaults standardUserDefaults] setObject:data222 forKey:@"Category22"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSData *cate22 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Category22"];
    MyCategory *cat222 = [NSKeyedUnarchiver unarchiveObjectWithData:cate22];
    NSLog(@"这尼玛是我输出的==================%@",cat222.categoryName);
    NSLog(@"这尼玛是我输出的==================%d",[cat222 sortId]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
