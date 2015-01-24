//
//  ViewController.swift
//  chapter8_tableview
//
//  Created by Kohei Hayakawa on 1/24/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var detailItem: Web? {
        didSet {
            self.configureView()
        }
    }
    
    func configureView() {
        if let webData: Web = self.detailItem {
            if let webView = self.webView {
                let url = NSURL(string: webData.url)
                let urlReq = NSURLRequest(URL: url!)
                webView.loadRequest(urlReq)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

