//
//  AddRecordViewController.swift
//  DailyCost
//
//  Created by Xinger on 15/4/12.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import UIKit

class AddRecordViewController: UIViewController {

    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var typeGroupView: UIView!
    @IBOutlet weak var typeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func genaralBtnClicked(sender: AnyObject) {
        typeLabel.text = "一般"
    }
    
    @IBAction func footBtnClicked(sender: AnyObject) {
        typeLabel.text = "餐饮"
    }
    
    @IBAction func drinkBtnClicked(sender: AnyObject) {
        typeLabel.text = "饮料"
    }
    
    @IBAction func fruitBtnClicked(sender: AnyObject) {
        typeLabel.text = "饮料"
    }
    
    @IBAction func shoppingBtnCilcked(sender: AnyObject) {
        typeLabel.text = "购物"
    }
    
    @IBAction func privateBtnClicked(sender: AnyObject) {
        typeLabel.text = "个人"
    }
    
    @IBAction func amuseBtnClicked(sender: AnyObject) {
        typeLabel.text = "娱乐"
    }
    
    @IBAction func movieBtnClicked(sender: AnyObject) {
        typeLabel.text = "电影"
    }
    
    @IBAction func charBtnClicked(sender: AnyObject) {
        typeLabel.text = "聊天"
    }
    
    @IBAction func trafficBtnClicked(sender: AnyObject) {
        typeLabel.text = "交通"
    }
    
    @IBAction func numBtnClicked(sender: UIButton) {
       println(sender.titleLabel?.text)
        if costLabel.text == "0" {
            costLabel.text = "\(sender.titleLabel!.text!)"
        } else {
            costLabel.text = "\(costLabel.text!)\(sender.titleLabel!.text!)"
        }
    }

    @IBAction func addBtnClicked(sender: UIButton) {
    }

    @IBAction func reduceBtnClicked(sender: UIButton) {
    }
    
    @IBAction func cancelBtnClicked(sender: UIButton) {
        costLabel.text = "0.00"
    }
    
}
