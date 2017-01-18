//
//  HXSearchBar.m
//  HXSearchBar
//
//  Created by 黄轩 on 2017/1/18.
//  Copyright © 2017年 黄轩. All rights reserved.
//

#import "HXSearchBar.h"

@implementation HXSearchBar

//设置输入框光标颜色
- (void)setCursorColor:(UIColor *)cursorColor
{
    if (cursorColor) {
        _cursorColor = cursorColor;
        //获取输入框
        UITextField *searchField = self.searchBarTextField;
        if (searchField) {
            //光标颜色
            [searchField setTintColor:cursorColor];
        }
    }
}

//获取输入框
- (UITextField *)searchBarTextField
{
    //获取输入框
    _searchBarTextField = [self valueForKey:@"searchField"];
    return _searchBarTextField;
}

//设置清除按钮图标
- (void)setClearButtonImage:(UIImage *)clearButtonImage
{
    if (clearButtonImage) {
        _clearButtonImage = clearButtonImage;
        //获取输入框
        UITextField *searchField = self.searchBarTextField;
        if (searchField) {
            //设置清除按钮图片
            UIButton *button = [searchField valueForKey:@"_clearButton"];
            [button setImage:clearButtonImage forState:UIControlStateNormal];
            searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
}

//设置取消按钮背景图片
- (void)setCancleButtonImage:(UIImage *)cancleButtonImage
{
    if (cancleButtonImage) {
        _cancleButtonImage = cancleButtonImage;
         self.backgroundImage = cancleButtonImage;
    }
}

//获取取消按钮
- (UIButton *)cancleButton
{
    self.showsCancelButton = YES;
    for (id cc in [self.subviews[0] subviews]) {
        if([cc isKindOfClass:[UIButton class]])
        {
            _cancleButton = (UIButton *)cc;
        }
    }
    return _cancleButton;
}

@end
