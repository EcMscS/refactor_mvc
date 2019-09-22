//
//  NavigationDelegate.swift
//  HackingWithSwift
//
//  Created by Jeffrey Lai on 9/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

class NavigationDelegate: NSObject, WKNavigationDelegate {
    //Variables
    let allowedSites = ["apple.com", "hackingwithswift.com"]
    
    //Methods
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let host = navigationAction.request.url?.host {
            if allowedSites.contains(where: host.contains) {
                decisionHandler(.allow)
                return
            } else {
                print("Disallowed invalid site: \(host).")
            }
        }

        decisionHandler(.cancel)
    }
    
    
}
