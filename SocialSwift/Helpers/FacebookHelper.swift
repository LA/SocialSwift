//
//  FacebookHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class FacebookHelper {
    
    static func openFriends() {
        if let appFeedURL = URL.init(string: "fb://friends") {
            URLHelper.openAction(with: appFeedURL)
        }
    }
    
    static func openFeed() {
        if let feedURL = URL.init(string: "fb://feed") {
            URLHelper.openAction(with: feedURL)
        }
    }
    
    static func openProfile() {
        if let profileURL = URL.init(string: "fb://profile") {
            URLHelper.openAction(with: profileURL)
        }
    }
    
    static func openToday() {
        if let todayURL = URL.init(string: "fb://today") {
            URLHelper.openAction(with: todayURL)
        }
    }
    
    static func openPhotoAlbums() {
        if let paURL = URL.init(string: "fb://albums") {
            URLHelper.openAction(with: paURL)
        }
    }
    
    static func openChat(withUID uid: String) {
        if let chatURL = URL.init(string: "fb://chat/(initWithUID:\(uid)") {
            URLHelper.openAction(with: chatURL)
        }
    }
    
    static func openEvents() {
        if let eventsURL = URL.init(string: "fb://events") {
            URLHelper.openAction(with: eventsURL)
        }
    }
}
