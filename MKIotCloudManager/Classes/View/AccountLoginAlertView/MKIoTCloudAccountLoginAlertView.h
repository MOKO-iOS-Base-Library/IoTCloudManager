//
//  MKIoTCloudAccountLoginAlertView.h
//  MKIotCloudManager_Example
//
//  Created by aa on 2025/3/3.
//  Copyright © 2025 aadyx2007@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKIoTCloudAccountLoginAlertViewModel : NSObject

@property (nonatomic, copy)NSString *accountPlaceholder;

@property (nonatomic, copy)NSString *account;

@property (nonatomic, assign)NSInteger accountMaxLen;

@property (nonatomic, copy)NSString *psdPlaceholder;

@property (nonatomic, copy)NSString *password;

@property (nonatomic, assign)NSInteger passwordMaxLen;

@property (nonatomic, assign)BOOL isHome;

@end

@interface MKIoTCloudAccountLoginAlertView : UIView

/// 显示弹窗
/// - Parameters:
///   - model: MKIoTCloudAccountLoginAlertViewModel
///   - completeBlock: completeBlock
- (void)showViewWithModel:(MKIoTCloudAccountLoginAlertViewModel *)model
            completeBlock:(void(^)(NSString *account, NSString *password, BOOL test))completeBlock;

@end

NS_ASSUME_NONNULL_END
