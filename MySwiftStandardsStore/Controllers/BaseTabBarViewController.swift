//
//  BaseTabBarViewController.swift
//  MySwiftStandardsStore
//
//  Created by Santhosh K on 05/01/22.
//

import UIKit

class BaseTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let todayViewController = UIViewController()
        todayViewController.view.backgroundColor = .red
        todayViewController.navigationItem.title = "Today"
        
        let todayNavController = UINavigationController(rootViewController: todayViewController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.navigationBar.prefersLargeTitles = true
        todayNavController.tabBarItem.image = UIImage(named: "today")
        */
        
        
        tabBar.tintColor = .darkGray
        tabBar.barTintColor = .white
        
        viewControllers = [
            createNavigationController(UIViewController(), "Today", "today", .white),
            createNavigationController(UIViewController(), "Apps", "apps", .orange),
            createNavigationController(AppSearchCollectionViewController(), "Search", "search", .yellow)
        ]
        
    }
    
    fileprivate func createNavigationController(_ viewController:UIViewController, _ title:String, _ imageName:String, _ color:UIColor) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = color
        viewController.navigationItem.title = "Search"
        navController.tabBarItem.title = "Search"
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
}
