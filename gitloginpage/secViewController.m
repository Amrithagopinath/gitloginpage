//
//  secViewController.m
//  gitloginpage
//
//  Created by Arul Jothi on 9/7/16.
//  Copyright © 2016 Tutorial. All rights reserved.
//

#import "secViewController.h"

@interface secViewController ()

@end

@implementation secViewController
@synthesize i1,lab1;
- (void)viewDidLoad {
    NSLog(@"%@",_dict);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)logout:(id)sender
{
    fir=[self.storyboard instantiateViewControllerWithIdentifier:@"first"];
    [[self navigationController]pushViewController:fir animated:YES];
    
           UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"logoutsuccessfully" message:@"Ok" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];
        
        [self presentViewController:alertController animated:YES completion:nil];
        
    }


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
