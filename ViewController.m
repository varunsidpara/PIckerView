//
//  ViewController.m
//  MailDemo
//
//  Created by ci yosemite 2 on 18/01/17.
//  Copyright (c) 2017 ci yosemite 2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMail:(id)sender {
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"Set Mail"];
    [mailComposer setMessageBody:@"Sending messege for the set mail" isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:nil];
    
}

#pragma mark - mail compose delegate
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    if (result) {
        NSLog(@"Result : %d",result);
    }
    if (error) {
        NSLog(@"Error : %@",error);
    }
    [controller dismissViewControllerAnimated:YES completion:nil];
    
}
@end
