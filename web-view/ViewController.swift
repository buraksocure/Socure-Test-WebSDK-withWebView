//
//  ViewController.swift
//  Web View App
//
//  Created by John Cotton on 5/3/18.
// 
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView = WKWebView()
         webView.navigationDelegate = self
         view = webView
        
        
        let url = URL(string: "https://verify-v2.socure.com/#/t/f5f672d9-d534-40d0-92a7-6e5c99592ee5")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
         
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


