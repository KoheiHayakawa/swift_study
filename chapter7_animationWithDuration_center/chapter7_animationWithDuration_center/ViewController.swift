//
//  ViewController.swift
//  chapter7_animationWithDuration_center
//
//  Created by Kohei Hayakawa on 1/23/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBAction func tapView(sender: UITapGestureRecognizer) {
        let tapPoint = sender.locationInView(self.view)
        let animationOptions = UIViewAnimationOptions.CurveEaseInOut | UIViewAnimationOptions.BeginFromCurrentState
        
        UIView.animateWithDuration(1.0,
            delay: 0,
            options: animationOptions,
            animations: {
                self.image.center = tapPoint
            },
            completion: nil)
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

