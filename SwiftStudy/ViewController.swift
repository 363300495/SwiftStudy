//
//  ViewController.swift
//  SwiftStudy
//
//  Created by tom on 2018/6/21.
//  Copyright © 2018年 tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let info = Account.init(dict: ["name":"香港","title":"地方","token":"8984","age":18])
        
        DataService.instance.saveAccount(information: info)
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100,y: 100,width: 80,height: 40)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
    }
    
    @objc func btnClick(btn: UIButton) {
        
        let account = DataService.instance.loadAccount()
        
        print("名字：\(account.name!) 地方：\(account.title!)token：\(account.token!)年龄：\(account.age)")
        
    }
}

