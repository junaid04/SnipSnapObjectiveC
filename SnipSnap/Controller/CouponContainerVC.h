//
//  CouponContainerVC.h
//  SnipSnap
//
//  Created by Junaid on 4/20/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CouponContainerVC : UIViewController


@property (nonatomic) UIViewController* vc;
@property (nonatomic) NSString* segueidentifier;
@property (nonatomic) UIViewController* lastVC;


-(void)segueIdentifierRecievedFromParent:(NSString*)button;

@end
