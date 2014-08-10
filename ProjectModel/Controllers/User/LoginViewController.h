//
//  LoginViewController.h
//  Club
//
//  Created by dongway on 14-8-10.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerDelegate <NSObject>

@optional
-(void)loginActionWithViewController:(UIViewController *)viewController;

@end

@interface LoginViewController : UIViewController

@property (nonatomic,retain)id<LoginViewControllerDelegate> delegate;

@end
