//
//  SnapchatHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class SnapchatHelper {
        
    static func openApp() {
        if let openURL = URL.init(string: "snapchat://") {
            URLHelper.openAction(with: openURL)
        }
    }
    
    static func add(user name: String) {
        if let addURL = URL.init(string: "snapchat://add/\(name)") {
            URLHelper.openAction(with: addURL)
        }
    }
}
