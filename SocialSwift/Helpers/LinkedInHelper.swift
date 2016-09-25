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
        if let appURL = URL(string: "linkedin://") {
            URLHelper.openAction(with: appURL)
        }
    }
    
    static func openProfile(of name: String) {
        if let profileURL = URL(string: "https://www.linkedin.com/in/\(name)") {
            URLHelper.openAction(with: profileURL)
        }
    }
    
    static func openGroup(with id: String) {
        if let groupURL = URL(string: "https://www.linkedin.com/groups/\(id)") {
            URLHelper.openAction(with: groupURL)
        }
    }
}
