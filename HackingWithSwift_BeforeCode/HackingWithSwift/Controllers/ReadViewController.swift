//
//  ReadViewController.swift
//  HackingWithSwift
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

//Simple Web View Wrapper
class ReadViewController: UIViewController, WKNavigationDelegate {
    var webView = WKWebView()
    var project: Project!
    var navigationDelegate = NavigationDelegate()
    
    let allowedSites = ["apple.com", "hackingwithswift.com"]

    override func loadView() {
        webView.navigationDelegate = navigationDelegate
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        assert(project != nil, "You must set a project before show this view controller.")
        title = project.title

        webView.load("https://www.hackingwithswift.com/read/\(project.number)/overview") //Separated into WebView Extension
    }

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
