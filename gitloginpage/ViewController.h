//
//  ViewController.h
//  gitloginpage
//
//  Created by Arul Jothi on 9/6/16.
//  Copyright © 2016 Tutorial. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secViewController.h"
@class secViewController;

@interface ViewController : UIViewController
{
    
    IBOutlet UITextField *t1;
    IBOutlet UITextField *t2;
    IBOutlet UILabel *l1;
    IBOutlet UILabel *l2;
    IBOutlet UIButton *b1;
    NSString *str;
    NSMutableData *receivedata;
    NSDictionary *dict;
    NSError *error;
    secViewController *second;
}
-(IBAction)click:(id)sender;
@end

