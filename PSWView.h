//
//  PSWView.h
//  test
//
//  Created by Lichao on 16/7/11.
//  Copyright © 2016年 Lichao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^block)(NSString *password);
/**
 *  输入完密码的回调代理
 */
@protocol PSWViewDelegate <NSObject>

- (void)sendPassword:(NSString *)password;

@end

@interface PSWView : UIView

- (instancetype)initWithFrame:(CGRect)frame labelNum:(NSInteger)num;

/**
 *  是否显示密码内容，默认YES
 */
@property (nonatomic, assign)BOOL secureLabelTextEntry;
/**
 *  单元格的数量
 */
@property (nonatomic, assign, readonly)NSInteger labelNum;

@property (nonatomic, weak)id<PSWViewDelegate> delegate;


@end
