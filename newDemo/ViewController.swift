//
//  ViewController.swift
//  newDemo
//
//  Created by gdcp on 2018/3/28.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

var i = 1

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "第\(i)页"
        i += 1
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 100, width: 100, height: 44)
        btn.setTitle("下一页", for: .normal)
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(btn)
        
        let btn1 = UIButton(type: .system)
        btn1.frame = CGRect(x: 200, y: 100, width: 100, height: 44)
        btn1.setTitle("首页", for: .normal)
        btn1.addTarget(self, action: #selector(pop), for: .touchUpInside)
        self.view.addSubview(btn1)
    }
    func push(){
        let con = ViewController()
        self.navigationController?.pushViewController(con, animated: true)
    }
    
    func pop(){
        /*
         返回上一个视图控制器self.navigationController?.popViewController(animated: true)
        i -= 1*/
        
        //返回根视图控制器
        self.navigationController?.popToRootViewController(animated: true)
    }
    deinit {
        i -= 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

