//
//  ViewController.swift
//  webview
//
//  Created by Muhammet on 25.07.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
     let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        webview.load(URLRequest(url: url))
        
    }


}

