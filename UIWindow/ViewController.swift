//
//  ViewController.swift
//  UIWindow
//
//  Created by puyue on 平成30-08-02.
//  Copyright © 平成30年 puyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var window3: UIWindow?//新建窗口
    let button : UIButton = {
        
        let btn = UIButton(type: .system)
        //btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btn.setTitle("WELCOME", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(red: 25/255, green: 56/255, blue:45/255, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .cyan//薄荷色
        view.addSubview(button)
        setupbtn()
        
        button.addTarget(self,action:#selector(tapped),for:.touchUpInside)
    }
    
    func  setupbtn(){
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true//constraint
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
        button.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
    }
    @objc func tapped(){
        window3 = UIWindow(frame: UIScreen.main.bounds) //新建
        window3?.makeKeyAndVisible()//KEY
        window3?.rootViewController = UINavigationController(rootViewController: VC())//打开VCclass对应页面
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

