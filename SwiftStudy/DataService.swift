//
//  DataService.swift
//  SwiftStudy
//
//  Created by tom on 2018/6/23.
//  Copyright © 2018年 tom. All rights reserved.
//

import UIKit

class DataService: NSObject {

    static let instance = DataService()
    
    func saveAccount(information: Account) {
        
        var accountPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        accountPath += "/userInfo.plist"
        
        print("路径:\(accountPath)")
        
        NSKeyedArchiver.archiveRootObject(information, toFile: accountPath)
    }
    
    func loadAccount() -> Account {
        
        var accountPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        accountPath += "/userInfo.plist"
        
        let account = NSKeyedUnarchiver.unarchiveObject(withFile: accountPath) as? Account
        
        return account!
    }
}
