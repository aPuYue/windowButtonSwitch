//
//  VC.swift
//  UIWindow
//
//  Created by puyue on 平成30-08-02.
//  Copyright © 平成30年 puyue. All rights reserved.
//

import Foundation
import UIKit

class VC: UIViewController {
    var window2: UIWindow?//新建窗口PUYUE
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
        
        view.backgroundColor = .orange//橙色
        view.addSubview(button)
        setupbtn()
        button.addTarget(self, action:#selector(buttonTappe), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonTappe(){
        window2 = UIWindow(frame: UIScreen.main.bounds) //现在的window之上有另一个,这段代码不能写在viewDidLoad里面,因为viewDidLoad必须执行完画面才会显示
        window2?.makeKeyAndVisible()//KEY
        window2?.rootViewController = UINavigationController(rootViewController: ViewController())
    }
    
    func  setupbtn(){

        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true//constraint
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
        button.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

