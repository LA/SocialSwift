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
        if let appFeedURL = NSURL.init(string: "fb://friends") {
            URLHelper.openAction(withURL: appFeedURL)
        }
    }
    
    static func openFeed() {
        if let feedURL = NSURL.init(string: "fb://feed") {
            URLHelper.openAction(withURL: feedURL)
        }
    }
    
    static func openProfile() {
        if let profileURL = NSURL.init(string: "fb://profile") {
            URLHelper.openAction(withURL: profileURL)
        }
    }
    
    static func openToday() {
        if let todayURL = NSURL.init(string: "fb://today") {
            URLHelper.openAction(withURL: todayURL)
        }
    }
    
    static func openPhotoAlbums() {
        if let paURL = NSURL.init(string: "fb://albums") {
            URLHelper.openAction(withURL: paURL)
        }
    }
    
    static func openChat(withUID uid: String) {
        if let chatURL = NSURL.init(string: "fb://chat/(initWithUID:\(uid)") {
            URLHelper.openAction(withURL: chatURL)
        }
    }
    
    static func openEvents() {
        if let eventsURL = NSURL.init(string: "fb://events") {
            URLHelper.openAction(withURL: eventsURL)
        }
    }
}