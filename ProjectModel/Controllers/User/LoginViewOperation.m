//
//  LoginViewOperation.m
//  Club
//
//  Created by dongway on 14-8-10.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "LoginViewOperation.h"

@implementation LoginViewOperation


-(void)presentLoginViewControllerInViewController:(UIViewController<LoginViewControllerDelegate> *)viewController{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    UINavigationController *userNavigationController = [[UINavigationController alloc] init];
    userNavigationController = [storyboard instantiateViewControllerWithIdentifier:@"UserNavigationController"];
    LoginViewController *loginViewController = userNavigationController.viewControllers.firstObject;
    loginViewController.delegate = viewController;
    [viewController presentViewController:userNavigationController animated:YES completion:nil];
}


@end
