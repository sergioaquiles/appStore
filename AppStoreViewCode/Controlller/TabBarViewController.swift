//
//  TabBarViewController.swift
//  AppStoreViewCode
//  https://www.udemy.com/course/ios-13-swift-5-recriando-a-app-store-restful-api-php/learn/lecture/18068633#overview
//  Created by Sergio Cardoso on 07/03/22.
//  https://drive.google.com/drive/folders/1Z48qyAxR-tQ4OhxW79Oj3rjaZy38LP43

import UIKit



class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todayVC = createTabItem(viewController: UIViewController(), title: "Today", icon: "icone-hoje")
        
        let appVC = createTabItem(viewController: UIViewController(), title: "Apps", icon: "icone-apps")
        
        let searchVC = createTabItem(viewController: SearchViewController(), title: "Search", icon: "icone-busca")
        
        viewControllers = [todayVC, appVC, searchVC]
        
        selectedIndex = 2
        
    }
    
    
    func createTabItem(viewController: UIViewController, title: String, icon: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        
        
        viewController.navigationItem.title = title
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: icon)
        viewController.view.backgroundColor = .white
        
        return navController
        
    }
}



