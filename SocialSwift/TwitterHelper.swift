//
//  TwitterHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation
import UIKit

class TwitterHelper {
    
    let urlHelper = URLHelper()
    
    func openTimeline() {
        if let timelineURL = NSURL.init(string: "twitter://timeline") {
            urlHelper.openAction(withURL: timelineURL)
        }
    }
    
    func openMentions() {
        if let mentURL = NSURL.init(string: "twitter://mentions") {
            urlHelper.openAction(withURL: mentURL)
        }
    }
    
    func openMessages() {
        if let msgURL = NSURL.init(string: "twitter://mentions") {
            urlHelper.openAction(withURL: msgURL)
        }
    }
    
    func openProfile(ofUsername username: String?, withID id: String?) {
        if let profileURL = NSURL.init(string: "twitter://user?screen_name=\(username)") {
            urlHelper.openAction(withURL: profileURL)
        } else if let profileURL = NSURL.init(string: "twitter://user?screen_name=\(id)") {
            urlHelper.openAction(withURL: profileURL)
        }
    }
    
    func openStatus(withID id: String) {
        if let mediaURL = NSURL.init(string: "twitter://status?id=\(id)") {
            urlHelper.openAction(withURL: mediaURL)
        }
    }
    
    func openSearch(withQuery query: String) {
        if let searchURL = NSURL.init(string: "search?query=%23\(query)") {
            urlHelper.openAction(withURL: searchURL)
        }
    }
    
    func post(message msg: String, inReplyToStatus id: String?) {
        // Use %20 for ' '
        if id != nil {
            if let postURL = NSURL.init(string: "post?message=\(msg)") {
                urlHelper.openAction(withURL: postURL)
            }
        } else {
            if let postURL = NSURL.init(string: "post?message=\(msg)&in_reply_to_status_id=\(id)") {
                urlHelper.openAction(withURL: postURL)
            }
        }
    }
}