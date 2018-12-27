/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#import "WXATScanPlugin.h"
#import <WeexSDK/WXSDKEngine.h>
#import "WXScannerVC.h"
@implementation WXATScanPlugin

- (void)pluginDidLoadWithArgs:(NSArray *)args
{
  
}

- (void)pluginWillOpenInContainer:(UIViewController *)container withArg:(NSArray *)args
{
    
    WXScannerVC * sannerVC = [WXScannerVC new];
//    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:sannerVC animated:YES completion:NULL];
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    if ([vc isKindOfClass:[UINavigationController class]]) {
        ((UINavigationController *)vc).navigationBar.hidden = YES;
        [(UINavigationController *)vc  pushViewController:sannerVC animated:YES];

    }else
    {
        vc.navigationController.navigationBar.hidden = YES;
        [vc.navigationController  pushViewController:sannerVC animated:YES];

    }
}

- (void)pluginWillClose
{
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    if ([vc isKindOfClass:[UINavigationController class]]) {
        ((UINavigationController *)vc).navigationBar.hidden = YES;
        [((UINavigationController *)vc) popToRootViewControllerAnimated:YES];
    }else
    {
        vc.navigationController.navigationBar.hidden = YES;
        [vc.navigationController popToRootViewControllerAnimated:YES];
    }
}

- (void)pluginDidUnload
{
    
}
- (void)tapStatusBarItemIndex:(NSInteger)index
{
    
}

- (CGRect)wantReactArea
{
    return CGRectZero;
}


@end
