//
//  ViewController.swift
//  chapter6_textfield_delegate
//
//  Created by Kohei Hayakawa on 1/20/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myTextField.delegate = self
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var tmpStr = textField.text as NSString
        tmpStr = tmpStr.stringByReplacingCharactersInRange(range, withString: string)
        self.myLabel.text = tmpStr == "" ? "0" : ((tmpStr as String).toInt()! * 25).description
        return true
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        
        self.myLabel.text = "0"
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

