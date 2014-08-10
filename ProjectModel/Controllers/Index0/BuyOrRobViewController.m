//
//  BuyOrRobViewController.m
//  Club
//
//  Created by dongway on 14-8-9.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "BuyOrRobViewController.h"
#import "PastItemsTableViewController.h"

@interface BuyOrRobViewController ()
{
    __weak IBOutlet UILabel *tipLabel;
    __weak IBOutlet UIButton *startTimeButton;
    __weak IBOutlet UIButton *buyOrRobButton;
    __weak IBOutlet UIButton *startTipButton;
    __weak IBOutlet UILabel *itemTip;
    __weak IBOutlet UIImageView *itemImage;
    __weak IBOutlet UILabel *itemNameLabel;
    __weak IBOutlet UILabel *itemPastPriceLabel;
    __weak IBOutlet UIView *deleteLine;
    __weak IBOutlet UILabel *itemCurrentLabel;
    __weak IBOutlet UILabel *itemRobTimeLabel;
    __weak IBOutlet UIButton *pastItemsButton;
    
    
}
@end

@implementation BuyOrRobViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView{
    [super loadView];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    switch (self.status) {
        case Rob:
            [self robViewSet];
            break;
        case Buy:
            [self buyViewSet];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buyOrRobAction:(id)sender {
    NSLog(@"buyOrRob");
}
- (IBAction)brownPastItemsAction:(id)sender {
    NSLog(@"brownPastItems");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PastItemsTableViewController *viewController = [[PastItemsTableViewController alloc] init];
    viewController = [storyboard instantiateViewControllerWithIdentifier:@"PastItemsTableViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}

-(void)robViewSet{
    self.title = @"免费抢";
    tipLabel.text = @"每日免费抢商品于下午16:00公布";
    [startTimeButton setTitle:@"每晚19:30" forState:UIControlStateNormal];
    [buyOrRobButton setTitle:@"开抢" forState:UIControlStateNormal];
    [startTipButton setTitle:@"准时开抢" forState:UIControlStateNormal];
    itemTip.text = @"今日供抢";
    itemCurrentLabel.hidden = YES;
    deleteLine.hidden = YES;
    [pastItemsButton setTitle:@"查看往期免费抢商品" forState:UIControlStateNormal];
}

-(void)buyViewSet{
    self.title = @"限时购买";
    tipLabel.text = @"每日购买商品于下午16:00更新";
    [startTimeButton setTitle:@"每天16:30" forState:UIControlStateNormal];
    [buyOrRobButton setTitle:@"抢购" forState:UIControlStateNormal];
    [startTipButton setTitle:@"准时开启" forState:UIControlStateNormal];
    itemTip.text = @"今日限购";
    [itemPastPriceLabel setPreferredMaxLayoutWidth:200.0];
    [pastItemsButton setTitle:@"查看往期限购商品" forState:UIControlStateNormal];

}


@end
