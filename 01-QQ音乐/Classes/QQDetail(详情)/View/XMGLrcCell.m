//
//  XMGLrcCell.m
//  01-QQ音乐
//
//  Created by 王顺子 on 15/11/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XMGLrcCell.h"
#import "XMGLrcLabel.h"

@interface XMGLrcCell()

@property (weak, nonatomic) IBOutlet XMGLrcLabel *lrcLabel;

@end

@implementation XMGLrcCell


+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *cellID = @"lrcCell";
    XMGLrcCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"XMGLrcCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

-(void)setProgress:(float)progress
{
    _progress = progress;
    self.lrcLabel.progress = progress;
}


-(void)setLrcText:(NSString *)lrcText
{
    _lrcText = lrcText;
    self.lrcLabel.text = lrcText;
}

@end
