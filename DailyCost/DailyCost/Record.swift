//
//  Record.swift
//  DailyCost
//
//  Created by Xinger on 15/4/11.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import UIKit

enum RecordType {
    //case General, Foot, Drink, Fruit, Shopping, Private, Amuse, Movie, Chat, Traffic
    //case "一般", "食物", "饮料", Fruit, Shopping, Private, Amuse, Movie, Chat, Traffic
}

class Record: NSObject {
    var id:Int!
    var type:String!
    var cost:Float = 0
    var date:String!
    
    class func record1() -> Record {
        var record = Record()
        record.id = 1
        record.type = "一般"
        record.cost = 20
        record.date = "2015-04-08"
        return record
    }
    
    class func record2() -> Record {
        var record = Record()
        record.id = 2
        record.type = "购物"
        record.cost = 200
        record.date = "2015-04-09"
        return record
    }
}
