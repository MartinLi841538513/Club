//
//  UserDetailViewController.m
//  Club
//
//  Created by dongway on 14-8-11.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "UserDetailViewController.h"
#import "UserDetailService.h"

@interface UserDetailViewController ()
{
    UserDetailService *userDetailService;
}
@end

@implementation UserDetailViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        userDetailService = [[UserDetailService alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的信息";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)logoutAction:(id)sender {
    [userDetailService loginoutActionInViewController:self];
}

#pragma LoginViewControllerDelegate
-(void)loginSuccessedActionWithViewController:(UIViewController *)viewController{
    [viewController.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma Notification
/*
 1，在当前viewcontroller loadData
 */
-(void)loginSuccessAction:(NSNotification *)nc{
    [self loadData];
}

//加载数据
-(void)loadData{
    
}


@end
