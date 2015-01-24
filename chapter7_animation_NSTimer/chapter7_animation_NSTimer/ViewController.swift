//
//  ViewController.swift
//  chapter7_animation_NSTimer
//
//  Created by Kohei Hayakawa on 1/23/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var timerObj:NSTimer = NSTimer.scheduledTimerWithTimeInterval(
            0.1,
            target: self,
            selector: Selector("step"),
            userInfo: nil,
            repeats: true
        )
    }
    
    func step(){
        image.center.x += 5
        
        let imageWidth = image.bounds.width
        if image.center.x > (self.view.bounds.width + imageWidth / 2) {
            image.center.x = -imageWidth
            image.center.y = CGFloat(arc4random()) % self.view.bounds.height
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

