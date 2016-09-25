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
        if let appURL = URL(string: "youtube://") {
            URLHelper.openAction(with: appURL)
        }
    }
    
    static func openVideo(with id: String) {
        if let vidURL = URL(string: "http://www.youtube.com/watch?v=\(id)") {
            URLHelper.openAction(with: vidURL)
        }
    }
}
