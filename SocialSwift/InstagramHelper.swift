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
    
    let urlHelper = URLHelper()
    
    func openCamera() {
        if let cameraURL = NSURL.init(string: "instagram://camera?id=1") {
            urlHelper.openAction(withURL: cameraURL)
        }
    }
    
    func openApp() {
        if let appURL = NSURL.init(string: "instagram://app?id=1") {
            urlHelper.openAction(withURL: appURL)
        }
    }
    
    func openProfile(ofUsername username: String) {
        if let profileURL = NSURL.init(string: "instagram://user?username=\(username)") {
            urlHelper.openAction(withURL: profileURL)
        }
    }
    
    func openMedia(withID id: String) {
        if let mediaURL = NSURL.init(string: "instagram://media?id=\(id)") {
            urlHelper.openAction(withURL: mediaURL)
        }
    }
    
    func openTag(withTag tag: String) {
        if let tagURL = NSURL.init(string: "instagram://tag?name=\(tag)") {
            urlHelper.openAction(withURL: tagURL)
        }
    }
    
    func openLocation(withID id: String) {
        if let locURL = NSURL.init(string: "instagram://location?id=\(id)") {
            urlHelper.openAction(withURL: locURL)
        }
    }
}
