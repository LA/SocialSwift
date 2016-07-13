//
//  URLHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation
import UIKit

class URLHelper {
    func schemeAvailable(scheme: String) -> Bool {
        if let url = NSURL.init(string: scheme) {
            return UIApplication.sharedApplication().canOpenURL(url)
        }
        return false
    }
    
    func openAction(withURL url: NSURL) {
        if schemeAvailable(url.absoluteString) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
}