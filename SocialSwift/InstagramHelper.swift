//
//  InstagramHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/12/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation
import UIKit

class InstagramHelper {
        
    static func openCamera() {
        if let cameraURL = NSURL.init(string: "instagram://camera?id=1") {
            URLHelper.openAction(withURL: cameraURL)
        }
    }
    
    static func openApp() {
        if let appURL = NSURL.init(string: "instagram://app?id=1") {
            URLHelper.openAction(withURL: appURL)
        }
    }
    
    static func openProfile(ofUsername username: String) {
        if let profileURL = NSURL.init(string: "instagram://user?username=\(username)") {
            URLHelper.openAction(withURL: profileURL)
        }
    }
    
    static func openMedia(withID id: String) {
        if let mediaURL = NSURL.init(string: "instagram://media?id=\(id)") {
            URLHelper.openAction(withURL: mediaURL)
        }
    }
    
    static func openTag(withTag tag: String) {
        if let tagURL = NSURL.init(string: "instagram://tag?name=\(tag)") {
            URLHelper.openAction(withURL: tagURL)
        }
    }
    
    static func openLocation(withID id: String) {
        if let locURL = NSURL.init(string: "instagram://location?id=\(id)") {
            URLHelper.openAction(withURL: locURL)
        }
    }
}
