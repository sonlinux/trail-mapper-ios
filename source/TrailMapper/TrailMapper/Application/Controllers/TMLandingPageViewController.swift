//
//  ViewController.swift
//  TrailMapper
//
//  Created by Tim Sutton on 2018/01/08.
//  Copyright © 2018 Kartoza Pty Ltd. All rights reserved.
//

import UIKit

class TMLandingPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // for the landing page only we will hide the navigation controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCreateTrailClicked(_ sender:Any) {
       // TMAPIManager.sharedInstance.getTrails()
        TMAPIManager.sharedInstance.getTrail(trailId: 1)
    }
    
}

