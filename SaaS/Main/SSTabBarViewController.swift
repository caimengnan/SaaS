//
//  SSTabBarViewController.swift
//  SaaS
//
//  Created by caimengnan on 2017/9/19.
//  Copyright © 2017年 chenglvnetworktechnology. All rights reserved.
//

import UIKit

class SSTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.setupChildVC()
        
    }

    // MARK: -设置基本框架
    func setupChildVC() {
        
        //业务 
        let businessVC = BusinessViewController()
        self.addChildViewController(businessVC, title: "业务", image: "", selectedImage: "")
        
        //消息
        let messageVC = MessageViewController()
        self.addChildViewController(messageVC, title: "消息", image: "", selectedImage: "")
        
        //我
        let meVC = MeViewController()
        self.addChildViewController(meVC, title: "我的", image: "", selectedImage: "")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK:添加子视图
    func addChildViewController(_ viewController: UIViewController,title:String,image:String,selectedImage:String) {
        
        let nav = UINavigationController.init(rootViewController: viewController)
        
        viewController.title = title
        nav.tabBarItem.title = title
        
        nav.tabBarItem.image = UIImage(named: image)
        nav.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        
        self.addChildViewController(nav)
        
    }
    
    

}
