//
//  LoginViewController.m
//  Club
//
//  Created by dongway on 14-8-10.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()
{
    __weak IBOutlet UITextField *loginname;
    __weak IBOutlet UITextField *password;
    
}
@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginAction:(id)sender {
    [self.delegate loginActionWithViewController:self];
}
- (IBAction)registerAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    RegisterViewController *registerViewController = [[RegisterViewController alloc] init];
    registerViewController = [storyboard instantiateViewControllerWithIdentifier:@"RegisterViewController"];
    
}


@end
