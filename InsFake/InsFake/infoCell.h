//
//  infoCell.h
//  InsFake
//
//  Created by z on 2019/12/22.
//  Copyright © 2019 lelouch. All rights reserved.
//

#ifndef infoCell_h
#define infoCell_h
#import <UIKit/UIKit.h>

@protocol commentview <NSObject>

-(void)commentWindow:(UIButton*)bu;

@end

@interface infoCell : UITableViewCell

@property(assign,nonatomic)id<commentview> delegate;
@property(nonatomic,strong) UIButton *like,*comment;
@property(nonatomic,strong) UILabel *like_num,*comment_num;
@property(nonatomic) BOOL like_click,comment_click;
@property(nonatomic) NSInteger like_number,comment_number,h;

-(NSInteger)getheight;

@end

#endif /* infoCell_h */
