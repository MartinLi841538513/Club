//
//  Index3Service.m
//  ProjectModel
//
//  Created by dongway on 14-8-9.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "Index3Service.h"
#import "UserDetailViewController.h"

@implementation Index3Service

/*
    用户详情
 */
-(void)presentUserDetailViewControllerOnViewController:(UIViewController *)viewController{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UserDetailViewController *userDetailViewController = [storyboard instantiateViewControllerWithIdentifier:@"UserDetailViewController"];
    userDetailViewController.hidesBottomBarWhenPushed = YES;
    [viewController.navigationController pushViewController:userDetailViewController animated:YES];
}

@end
