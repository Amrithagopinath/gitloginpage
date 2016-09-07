//
//  secViewController.h
//  gitloginpage
//
//  Created by Arul Jothi on 9/7/16.
//  Copyright © 2016 Tutorial. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@class ViewController;

@interface secViewController : UIViewController
{
    ViewController *fir;
    IBOutlet UIButton *b2;
    IBOutlet UILabel *l1;
    
}
-(IBAction)logout:(id)sender;
@property(nonatomic,retain)IBOutlet NSDictionary *dict;
@property(nonatomic,retain)IBOutlet UIImageView *i1;
@property(nonatomic,retain)IBOutlet UILabel *lab1;

@end
