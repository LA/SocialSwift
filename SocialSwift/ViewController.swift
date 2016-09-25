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
    
    // MARK: - Helper Button Methods
    @IBAction func openTwitter(_ sender: UIButton) {
        TwitterHelper.openTimeline()
    }
    
    @IBAction func openInstagram(_ sender: UIButton) {
        InstagramHelper.openApp()
    }
    
    @IBAction func openSnapchat(_ sender: UIButton) {
        SnapchatHelper.openApp()
    }
    
    @IBAction func openFacebook(_ sender: UIButton) {
        FacebookHelper.openFeed()
    }
    
    @IBAction func openLinkedIn(_ sender: UIButton) {
        LinkedInHelper.openApp()
    }
    
    @IBAction func openYoutube(_ sender: UIButton) {
        YoutubeHelper.openApp()
    }
    
    // Open Text
    @IBAction func openSMS(_ sender: UIButton) {
        let msgVC = SMSHelper.send("Hello", to: nil)
        msgVC.messageComposeDelegate = self
        self.present(msgVC, animated: true, completion: nil)
    }
    
    // MARK: - Message Protocol Methods
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch result.rawValue {
        case MessageComposeResult.cancelled.rawValue:
            print("Message Cancelled")
        case MessageComposeResult.failed.rawValue:
            print("Message Failed")
        case MessageComposeResult.sent.rawValue:
            print("Message Succeded")
        default:
            break
        }
        controller.dismiss(animated: true, completion: nil)
    }
}
