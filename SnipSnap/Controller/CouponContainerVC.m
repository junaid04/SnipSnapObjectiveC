//
//  CouponContainerVC.m
//  SnipSnap
//
//  Created by Junaid on 4/20/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

#import "CouponContainerVC.h"

@implementation CouponContainerVC

- (void)viewDidLoad {
    
    [self segueIdentifierRecievedFromParent:@"Barcode"];

}


- (void)segueIdentifierRecievedFromParent:(NSString *)button {
    
    if ([button isEqualToString: @"Barcode"]) {
        
        _segueidentifier = @"Barcode";
        [self performSegueWithIdentifier:_segueidentifier sender:self];
        
    }
    else if ([button isEqualToString:@"Promocode"]){
        
        _segueidentifier = @"Promocode";
        [self performSegueWithIdentifier:_segueidentifier sender:self];
    
    }
   else {
       
       _segueidentifier = @"Photo";
       [self performSegueWithIdentifier:_segueidentifier sender:self];
   
   }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:_segueidentifier]) {
        if (_lastVC != nil) {
            
            [[_lastVC view]removeFromSuperview];
        }
        
        _vc = (UIViewController *)segue.destinationViewController;
        [self addChildViewController:_vc];
        _vc.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        [[self view]addSubview:_vc.view];
        [_vc didMoveToParentViewController:self];
        _lastVC = _vc;
        
        
    }

}


@end
