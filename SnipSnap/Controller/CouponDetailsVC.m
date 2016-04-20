//
//  CouponDetailsVC.m
//  SnipSnap
//
//  Created by Junaid on 4/20/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

#import "CouponDetailsVC.h"

@implementation CouponDetailsVC


-(void)viewDidLoad {
    
    [super viewDidLoad];
}

- (IBAction)barCodeTap:(id)sender {
    
    [_containerView segueIdentifierRecievedFromParent:@"Barcode"];

}

- (IBAction)promoCodeTap:(id)sender {
    
    [_containerView segueIdentifierRecievedFromParent:@"Promocode"];
}
- (IBAction)photoTap:(id)sender {
    
    [_containerView segueIdentifierRecievedFromParent:@"Photo"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"Container"]) {
        
        _containerView = (CouponContainerVC *)segue.destinationViewController;
    }


}

@end
