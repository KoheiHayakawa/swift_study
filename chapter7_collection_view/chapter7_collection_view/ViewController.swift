//
//  ViewController.swift
//  chapter7_collection_view
//
//  Created by Kohei Hayakawa on 1/21/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var cellImages:Array<UIImage?>
    
    required init(coder aDecoder: NSCoder) {
        let image1 = UIImage(named: "cloud.png")
        let image2 = UIImage(named: "lightning.png")
        let image3 = UIImage(named: "rain.png")
        let image4 = UIImage(named: "snow.png")
        let image5 = UIImage(named: "sunny_cloud.png")
        let image6 = UIImage(named: "sunny.png")

        cellImages = [image1, image2, image3, image4, image5, image6]
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as CollectionViewCell
        let num = indexPath.row % cellImages.count
        let image = cellImages[num]
        cell.imageView.image = image
        return cell
    }
}

