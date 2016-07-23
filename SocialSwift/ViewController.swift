//
//  ViewController.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openTwitter(sender: UIButton) {
        TwitterHelper.openProfile(ofUsername: "AdarButel", withID: nil)
    }
    
    @IBAction func openInstagram(sender: UIButton) {
        InstagramHelper.openApp()
    }
    
    @IBAction func openSnapchat(sender: UIButton) {
        SnapchatHelper.add(user: "promise")
    }
    
    @IBAction func openFacebook(sender: UIButton) {
        FacebookHelper.openEvents()
    }
    
    // Open Text
    @IBAction func openSMS(sender: UIButton) {
        let msgVC = SMSHelper.send(message: "Hello", toRecipients: [])
        msgVC.messageComposeDelegate = self
        self.presentViewController(msgVC, animated: true, completion: nil)
    }
    
    //MARK: - MFMessageComposeViewControllerDelegate Methods
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        switch result.rawValue {
        case MessageComposeResultCancelled.rawValue:
            print("Message Cancelled")
        case MessageComposeResultFailed.rawValue:
            print("Message Failed")
        case MessageComposeResultSent.rawValue:
            print("Message Succeded")
        default:
            break
        }
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

