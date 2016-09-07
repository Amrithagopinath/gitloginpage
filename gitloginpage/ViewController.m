//
//  ViewController.m
//  gitloginpage
//
//  Created by Arul Jothi on 9/6/16.
//  Copyright © 2016 Tutorial. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    t1.autocorrectionType = UITextAutocorrectionTypeNo;
    t2.autocorrectionType = UITextAutocorrectionTypeNo;

        
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)click:(id)sender

{
        
     str = @"https://api.github.com/users/";
     NSString *str1 = [str stringByAppendingString:t1.text];
     NSURL *url =[NSURL URLWithString:str1];
     NSURLRequest *req =[NSURLRequest requestWithURL:url];
     NSURLConnection *connect =[[NSURLConnection alloc]initWithRequest:req delegate:self];
  
   if(connect)
    {
        receivedata=[NSMutableData data];
        
   }
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
{
    [receivedata setLength:0];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
{
    [receivedata appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
{
    dict = [NSJSONSerialization JSONObjectWithData:receivedata options:NSJSONReadingAllowFragments error:nil];
           
    if (dict[@"message"])
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error" message:[dict valueForKey:@"message"] preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];
        
        [self presentViewController:alertController animated:YES completion:nil];
  
    }
    else {
       [self performSegueWithIdentifier:@"second" sender:nil];
   }

    NSLog(@"%@",dict);
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    secViewController * vc = segue.destinationViewController;
    vc.dict = dict;
    

}
@end
