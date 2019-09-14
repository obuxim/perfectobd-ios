//
//  ViewController.swift
//  Unikaservice
//
//  Created by Zubair Hasan on 14/9/19.
//  Copyright © 2019 Octoriz Private Limited. All rights reserved.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    //
    // OUTLETS
    //
    @IBOutlet weak var webView: WKWebView!
    
    //
    // PROPERTIES
    //
    let request: URLRequest = URLRequest(url: URL(string: "http://www.unikaservice.dk")!)
    
    //
    // CLASS DEFINED METHODS
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView.load(request)
    }

    //
    //  ACTIONS
    //
    @IBAction func back(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    @IBAction func forward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
}

