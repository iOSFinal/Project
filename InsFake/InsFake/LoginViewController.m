//
//  LoginViewController.m
//  InsFake
//
//  Created by lelouch on 2019/12/20.
//  Copyright © 2019 lelouch. All rights reserved.
//

#import "LoginViewController.h"
#import "TabBarViewController.h"

@interface LoginViewController ()<UITextViewDelegate>

@property (nonatomic,strong) UILabel* headline;

@property (nonatomic,strong) UILabel* userHint;
@property (nonatomic,strong) UITextField* user;

@property (nonatomic,strong) UILabel* pwdHint;
@property (nonatomic,strong) UITextField* pwd;

@property (nonatomic,strong) UIButton* login;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _headline=[[UILabel alloc]init];
    _headline.text=@"Social APP";
    _headline.font=[UIFont systemFontOfSize:20];
    _headline.textColor=[UIColor blackColor];
    _headline.textAlignment=NSTextAlignmentCenter;
    
    _user=[[UITextField alloc]init];
    _user.placeholder=@"用户名";
    _user.font=[UIFont systemFontOfSize:14];
    _user.textColor=[UIColor grayColor];
    
    _pwd=[[UITextField alloc]init];
    _pwd.placeholder=@"登录密码";
    _pwd.font=[UIFont systemFontOfSize:14];
    _pwd.textColor=[UIColor grayColor];
    
    _login=[[UIButton alloc]init];
    [_login setTitle:@"登录" forState:UIControlStateNormal];
    [_login setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _login.titleLabel.font=[UIFont systemFontOfSize:17];
    _login.contentHorizontalAlignment=UIControlContentVerticalAlignmentCenter;
    [_login sizeToFit];
    [_login addTarget:self action:@selector(onClickLogin:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_headline];
    [self.view addSubview:_user];
    [self.view addSubview:_pwd];
    [self.view addSubview:_login];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    CGRect bounds=self.view.bounds;
    CGFloat screenWidth=bounds.size.width;
    CGFloat screenHeight=bounds.size.height;
    
    CGRect headRect=CGRectMake(0, 0, screenWidth-100*2, 50);
    _headline.frame=headRect;
    
    //CGRect
}

- (IBAction)onClickLogin:(id)sender{
    TabBarViewController* vc=[[TabBarViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
