//
//  ViewController.swift
//  Coronavirus
//
//  Created by Iam Wayne on 2/28/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61")!
        let request = URLRequest(url: url)
        webView.load(request)
        
       // let loadRequest =
        
        
        // Do any additional setup after loading the view.
    }


}

