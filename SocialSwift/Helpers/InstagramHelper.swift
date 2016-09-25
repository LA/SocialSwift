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
        if let cameraURL = URL.init(string: "instagram://camera?id=1") {
            URLHelper.openAction(with: cameraURL)
        }
    }
    
    static func openApp() {
        if let appURL = URL.init(string: "instagram://app?id=1") {
            URLHelper.openAction(with: appURL)
        }
    }
    
    static func openProfile(of username: String) {
        if let profileURL = URL.init(string: "instagram://user?username=\(username)") {
            URLHelper.openAction(with: profileURL)
        }
    }
    
    static func openMedia(with id: String) {
        if let mediaURL = URL.init(string: "instagram://media?id=\(id)") {
            URLHelper.openAction(with: mediaURL)
        }
    }
    
    static func openTag(with tag: String) {
        if let tagURL = URL.init(string: "instagram://tag?name=\(tag)") {
            URLHelper.openAction(with: tagURL)
        }
    }
    
    static func openLocation(with id: String) {
        if let locURL = URL.init(string: "instagram://location?id=\(id)") {
            URLHelper.openAction(with: locURL)
        }
    }
}
