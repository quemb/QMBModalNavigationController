//
//  QMBModalNavigationControllerViewController.m
//  QMBModalNavigationController-Sample
//
//  Created by Toni Möckel on 17.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import "QMBModalNavigationControllerViewController.h"

@interface QMBModalNavigationControllerViewController ()

@end

@implementation QMBModalNavigationControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    // Use title if title is set up
    if (viewController == [self.viewControllers objectAtIndex:0]){
        if (self.dismissText != nil){
            
            [viewController.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:self.dismissText style:UIBarButtonItemStylePlain target:self action:@selector(onCloseButtonTouchUpInside:)]];
            
        }else {
            // Use icon as fallback
            if (self.icon == 0){
                self.icon = kQMBModalNavigationControllerDefaultDismissIcon;
            }
            
            NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
            
            factory.colors = @[self.navigationBar.tintColor];
            [viewController.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[factory createImageForIcon:self.icon] style:UIBarButtonItemStylePlain target:self action:@selector(onCloseButtonTouchUpInside:)]];
            
        }
        
        
    }
    
}



- (void) onCloseButtonTouchUpInside:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
