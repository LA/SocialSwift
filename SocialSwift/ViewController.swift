//
//  ViewController.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let urlHelper = URLHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func openTwitter(sender: UIButton) {
        TwitterHelper().openTimeline()
    }
    
    @IBAction func openInstagram(sender: UIButton) {
        InstagramHelper().openApp()
    }
    
}

