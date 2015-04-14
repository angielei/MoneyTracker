//
//  Db.swift
//  DailyCost
//
//  Created by Xinger on 15/4/11.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import Foundation

//不用数据库，暂时没用
class Db {
    class func getDb() -> FMDatabase {
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let docsDir = dirPaths[0] as String
        var databasePath = docsDir.stringByAppendingPathComponent("cost.db")
        
        if !filemgr.fileExistsAtPath(databasePath) {
            let db = FMDatabase(path: databasePath)
            
            if db.open() {
                let sql = "CREATE TABLE IF NOT EXISTS COST (ID INTEGER, TYPE TEXT, COSE TEXT, TIME TEXT)"
                if !db.executeStatements(sql) {
                    println("Error: \(db.lastErrorMessage())")
                }
                db.close()
            } else {
                println("Error: \(db.lastErrorMessage())")
            }
        }
        let db = FMDatabase(path: databasePath)
        return db
    }
    
    class func executeSql(sql:String, arguments:[AnyObject]) {
        let db = Db.getDb()
        db.open()
        db.executeUpdate(sql, withArgumentsInArray: arguments)
        db.close()
    }

}