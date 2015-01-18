//
//  ViewController.swift
//  chapter5-1_class_MyBank
//
//  Created by Kohei Hayakawa on 1/18/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myMoney = BankManager()
        
        var result = myMoney.nyukin(10000)
        println(result)
        println("残高: \(myMoney.zandaka), ポイント: \(myMoney.point)")
        
        result = myMoney.syukkin(7000)
        println(result)
        
        result = myMoney.syukkin(5000)
        println(result)
        println("残高: \(myMoney.zandaka), ポイント: \(myMoney.point)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

