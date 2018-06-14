//
//  ViewController.swift
//  RHS-APP
//
//  Created by Connor Redmond on 6/1/18.
//  Copyright © 2018 RHS CCPGlobal Interns. All rights reserved.
//

import UIKit
import WebKit
import SideMenu
class ViewController: UIViewController {


    @IBOutlet weak var rhsButton: UIButton!
    @IBOutlet weak var rhsWeb: WKWebView!
    @IBOutlet weak var picWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! UISideMenuNavigationController
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        //rhsButton.addTarget(self, action: Selector("didTapRHS"), for: .touchUpInside)
        
        // Define the menus
        //let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: ViewController)
        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        
        
        //let menuRightNavigationController = UISideMenuNavigationController(rootViewController: YourViewController)
        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        // let menuRightNavigationController = storyboard!.instantiateViewController(withIdentifier: "RightMenuNavigationController") as! UISideMenuNavigationController
        //SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the view controller it displays!
        //SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        //SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)

        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func didTapRHS(sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "http://www.rockhursths.edu")!)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
        
        //let url:URL = URL(string: "https://www.apple.com")!
        //let urlRequest:URLRequest = URLRequest(url : url)
        //rhsWeb.load(urlRequest)
        //let urlPic:URL = URL(string: "https://google.com")!
        //let urlRequest2:URLRequest = URLRequest(url:urlPic)
        //picWeb.load(urlRequest2)
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

