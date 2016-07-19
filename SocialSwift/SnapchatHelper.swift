//
//  SnapchatHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class SnapchatHelper {
    
    let urlHelper = URLHelper()
    
    static func openApp() {
        if let openURL = NSURL.init(string: "snapchat://") {
            URLHelper.openAction(withURL: openURL)
        }
    }
    
    static func add(user name: String) {
        if let addURL = NSURL.init(string: "snapchat://add/\(name)") {
            URLHelper.openAction(withURL: addURL)
        }
    }
}