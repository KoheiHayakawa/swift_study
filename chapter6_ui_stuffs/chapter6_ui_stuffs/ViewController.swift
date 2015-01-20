//
//  ViewController.swift
//  chapter6_ui_stuffs
//
//  Created by Kohei Hayakawa on 1/20/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var colorChip: UIView!
    
    @IBAction func changedStepperValue(sender: UIStepper) {
        self.numLabel.text = Int(sender.value).description
    }
    
    @IBAction func changedColor(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.colorChip.backgroundColor = UIColor.blueColor()
        case 1:
            self.colorChip.backgroundColor = UIColor.yellowColor()
        case 2:
            self.colorChip.backgroundColor = UIColor.greenColor()
        default:
            self.colorChip.backgroundColor = UIColor.blueColor()
        }
    }
    
    @IBAction func showHide(sender: UISwitch) {
        self.colorChip.hidden = !sender.on
    }
    
    @IBAction func changedSlider(sender: UISlider) {
        self.colorChip.alpha = CGFloat(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

