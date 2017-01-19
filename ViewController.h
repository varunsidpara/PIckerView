//
//  ViewController.h
//  MailDemo
//
//  Created by ci yosemite 2 on 18/01/17.
//  Copyright (c) 2017 ci yosemite 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate>
{
    
    MFMailComposeViewController *mailComposer;
}


- (IBAction)sendMail:(id)sender;


@end

