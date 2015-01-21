//
//  ViewController.swift
//  chapter7_tableview_custom
//
//  Created by Kohei Hayakawa on 1/21/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

struct CellData {
    var image:Image
    var text:Text
    enum Image:String {
        case kaeru = "user.png"
        case azarashi = "user2.png"
    }
    enum Text:String {
        case text1 = "ああああああああああ"
        case text2 = "いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい"
        case text3 = "ううううううううううううううううううううううううううううううう"
    }
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var tableData:[CellData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let data1 = CellData(image: .kaeru, text: .text1)
        let data2 = CellData(image: .kaeru, text: .text2)
        let data3 = CellData(image: .azarashi, text: .text3)
        tableData = [data1, data2, data2, data3, data2, data3, data3, data1]
        
        //let tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        //self.view.addSubview(tableView)
        
        //tableView.delegate = self
        //tableView.dataSource = self
        
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.registerNib(xib, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as TableViewCell
        let cellData = tableData[indexPath.row]
        cell.cellImage.image = UIImage(named: cellData.image.rawValue)
        cell.cellLabel.text = cellData.text.rawValue
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "リスト"
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as TableViewCell
        return cell.bounds.height
    }

}

