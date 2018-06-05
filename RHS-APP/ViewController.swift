//
//  ViewController.swift
//  RHS-APP
//
//  Created by Connor Redmond on 6/1/18.
//  Copyright © 2018 RHS CCPGlobal Interns. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    
    @IBOutlet weak var RHSButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
        let url:URL = URL(string: "https://rockhursths.edu")!
        let urlRequest:URLRequest = URLRequest(url:url)
        webView.load(urlRequest)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

