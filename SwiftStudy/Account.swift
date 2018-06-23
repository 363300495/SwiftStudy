//
//  Infomation.swift
//  SwiftStudy
//
//  Created by tom on 2018/6/23.
//  Copyright © 2018年 tom. All rights reserved.
//

import UIKit

class Account: NSObject,NSCoding {
    
    var name: String?
    
    var token: String?
    
    var title: String?
    
    var age: Int = 0
    
    //自定义构造函数
    init(dict: [String : Any]) {
        
        super.init()
        
        name = dict["name"] as? String
        token = dict["token"] as? String
        title = dict["title"] as? String
        age = dict["age"] as! Int
    }
    
    
    //归档
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(name, forKey: "name")
        aCoder.encode(token, forKey: "token")
        aCoder.encode(title, forKey: "title")
        aCoder.encode(age, forKey: "age")
    }
    
    //解档
    required init?(coder aDecoder: NSCoder) {
        
        name = aDecoder.decodeObject(forKey: "name") as? String
        token = aDecoder.decodeObject(forKey: "token") as? String
        title = aDecoder.decodeObject(forKey: "title") as? String
        age = aDecoder.decodeInteger(forKey: "age")
    }
}
