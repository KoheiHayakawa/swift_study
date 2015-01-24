//
//  ViewController.swift
//  chapter8_alert
//
//  Created by Kohei Hayakawa on 1/24/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(sender: AnyObject) {
        
        let alert = UIAlertController(
            title: "タイトル",
            message: "メッセージ",
            preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        alert.addAction(
            UIAlertAction(
                title: "ボタン1",
                style: UIAlertActionStyle.Default,
                handler: { action in
                    println(action.title)
            }))
        
        alert.addAction(
            UIAlertAction(
                title: "ボタン2",
                style: UIAlertActionStyle.Default,
                handler: { action in
                    println(action.title)
                    self.hello()
            }))
        
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: UIAlertActionStyle.Cancel,
                handler: { action in
                    println(action.title)
            }))
        
        alert.addAction(
            UIAlertAction(
                title: "削除",
                style: UIAlertActionStyle.Destructive,
                handler: { action in
                    println(action.title)
            }))
        /*
        alert.addTextFieldWithConfigurationHandler{ textField in
            textField.delegate = self
        }
        */
        self.presentViewController(alert, animated: true, completion: nil)
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        println(textField.text)
    }
    
    func hello() {
        println("hello")
    }
}

