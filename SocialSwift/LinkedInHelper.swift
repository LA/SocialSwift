//
//  LinkedInHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/22/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class LinkedInHelper {
    
    static func openApp() {
        if let appURL = NSURL(string: "linkedin://") {
            URLHelper.openAction(withURL: appURL)
        }
    }
    
    static func openProfile(ofName name: String) {
        if let profileURL = NSURL(string: "https://www.linkedin.com/in/\(name)") {
            URLHelper.openAction(withURL: profileURL)
        }
    }
    
    static func openGroup(withID id: String) {
        if let groupURL = NSURL(string: "https://www.linkedin.com/groups/\(id)") {
            URLHelper.openAction(withURL: groupURL)
        }
    }
}