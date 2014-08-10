//
//  BuyOrRobViewController.h
//  Club
//
//  Created by dongway on 14-8-9.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import <UIKit/UIKit.h>

enum Status{
    Rob = 0,
    Buy
};

@interface BuyOrRobViewController : UIViewController

@property(nonatomic,assign)int status;
@end
