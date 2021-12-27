//
//  MainTabBarController.swift
//  RoundedTabBar
//
//  Created by David Yoon on 2021/12/27.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private lazy var homeViewController: UIViewController = {
        let viewController = HomeViewController()
        let tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var benefitViewController: UIViewController = {
        let viewController = BenefitViewController()
        let tabBarItem = UITabBarItem(title: "Benefit", image: UIImage(systemName: "shippingbox.fill"), tag: 1)
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        self.viewControllers = [homeViewController, benefitViewController]
        
        self.tabBar.layer.masksToBounds = true
        self.tabBar.isTranslucent = true
        self.tabBar.barStyle = UIBarStyle.black
        self.tabBar.layer.cornerRadius = 20
        self.tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }

}
