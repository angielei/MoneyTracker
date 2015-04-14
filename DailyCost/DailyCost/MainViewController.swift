//
//  ViewController.swift
//  DailyCost
//
//  Created by Xinger on 15/4/11.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
                            
    @IBOutlet weak var myTableView: UITableView!
    
    var recordList = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        recordList.addObject(Record.record1())
        recordList.addObject(Record.record2())
        
        myTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func detail(sender: AnyObject) {
    }

    @IBAction func setting(sender: AnyObject) {
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("CostCell", forIndexPath: indexPath) as UITableViewCell
        var record = recordList[indexPath.row] as Record
        
        var btn = cell.viewWithTag(1) as UIButton
        //imageView.image = UIImage(name:"") 根据type设置图片
        var typeLabel = cell.viewWithTag(2) as UILabel
        typeLabel.text = record.type
        
        var costLabel = cell.viewWithTag(3) as UILabel
        costLabel.text = String(format: "%.02lf", record.cost)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordList.count
    }
    
}

