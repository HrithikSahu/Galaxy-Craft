//
//  ViewController.swift
//  NasaSpaceApps
//
//  Created by Diego Graciano on 19/10/19.
//  Copyright © 2019 Diego Graciano. All rights reserved.
//
import WebKit
import UIKit

class ViewController: UIViewController, WKUIDelegate {
    
    
    var webView: WKWebView!

    @IBOutlet weak var viewForEmbeddingWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: viewForEmbeddingWebView.frame, configuration: WKWebViewConfiguration() )
        self.viewForEmbeddingWebView.addSubview(webView)
        self.webView.allowsBackForwardNavigationGestures = true
        let myURL = URL(string: "https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }


}

