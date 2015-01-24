//
//  ViewController.swift
//  chapter8_TouchID
//
//  Created by Kohei Hayakawa on 1/24/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushedButton(sender: AnyObject) {
        
        let authContext = LAContext()
        if authContext.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: nil) {
            authWithBiometrics()
        } else {
            return
        }
    }
    
    func authWithBiometrics() {
        let authContext = LAContext()
        authContext.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics,
            localizedReason: "Touch ID認証をします",
            reply: {(success: Bool, error: NSError!) -> Void in
                self.result(success, error: error)
        })
    }
    
    func result(success: Bool, error: NSError!) {
        var resultMsg:String
        if success {
            resultMsg = "認証に成功しました"
        } else {
            switch error.code {
            case -1:
                resultMsg = "認証に失敗"
            case -2:
                resultMsg = "キャンセル"
            case -3:
                resultMsg = "パスワード入力"
            default:
                resultMsg = "その他: \(error.code)"
            }
        }
        
        let alert = UIAlertController(
            title: "Touch ID認証結果",
            message: resultMsg,
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(
        UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

