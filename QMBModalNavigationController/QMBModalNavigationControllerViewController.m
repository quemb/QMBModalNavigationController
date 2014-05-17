//
//  QMBModalNavigationControllerViewController.m
//  QMBModalNavigationController-Sample
//
//  Created by Toni Möckel on 17.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import "QMBModalNavigationControllerViewController.h"
#import "NIKFontAwesomeIconFactory+iOS.h"

@interface QMBModalNavigationControllerViewController ()

@end

@implementation QMBModalNavigationControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (viewController == [self.viewControllers objectAtIndex:0]){
        NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
        
        [viewController.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[factory createImageForIcon:NIKFontAwesomeIconMinus] style:UIBarButtonItemStylePlain target:self action:@selector(onCloseButtonTouchUpInside:)]];
    }
    
}



- (void) onCloseButtonTouchUpInside:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
