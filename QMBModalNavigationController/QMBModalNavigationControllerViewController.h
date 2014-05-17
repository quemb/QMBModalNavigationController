//
//  QMBModalNavigationControllerViewController.h
//  QMBModalNavigationController-Sample
//
//  Created by Toni Möckel on 17.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIKFontAwesomeIconFactory+iOS.h"

static int kQMBModalNavigationControllerDefaultDismissIcon = NIKFontAwesomeIconAngleDown;

@interface QMBModalNavigationControllerViewController : UINavigationController<UINavigationControllerDelegate>

@property (nonatomic, strong) NSString *dismissText;
@property (nonatomic) int icon;

@end
