//
//  YoutubeHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/22/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation

class YoutubeHelper {
    
    static func openApp() {
        if let appURL = NSURL(string: "youtube://") {
            URLHelper.openAction(withURL: appURL)
        }
    }
    
    static func openVideo(withID id: String) {
        if let vidURL = NSURL(string: "http://www.youtube.com/watch?v=\(id)") {
            URLHelper.openAction(withURL: vidURL)
        }
    }
}