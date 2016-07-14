//
//  FacebookHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class FacebookHelper {
    
    let urlHelper = URLHelper()
    
    func openFriends() {
        if let appFeedURL = NSURL.init(string: "fb://friends") {
            urlHelper.openAction(withURL: appFeedURL)
        }
    }
    
    func openFeed() {
        if let feedURL = NSURL.init(string: "fb://feed") {
            urlHelper.openAction(withURL: feedURL)
        }
    }
    
    func openProfile() {
        if let profileURL = NSURL.init(string: "fb://profile") {
            urlHelper.openAction(withURL: profileURL)
        }
    }
    
    func openToday() {
        if let todayURL = NSURL.init(string: "fb://today") {
            urlHelper.openAction(withURL: todayURL)
        }
    }
}