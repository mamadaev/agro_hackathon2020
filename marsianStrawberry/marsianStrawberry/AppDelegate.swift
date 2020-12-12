//
//  AppDelegate.swift
//  marsianStrawberry
//
//  Created by i.mamadaev on 11.12.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let firstVC = FirstViewController()
//
//        firstVC.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map"), tag: 1)
//
//        let secondVC = SecondViewController()
//
//        secondVC.tabBarItem = UITabBarItem(title: "List", image: UIImage(systemName: "list.dash"), tag: 2)
//
//        let thirdVC = ThirdViewController()
//
//        thirdVC.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "ellipsis"), tag: 3)
        
        let mainVC = MainViewController()
        
        mainVC.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        let tabBarController = UITabBarController()
        
        let mainNC = UINavigationController(rootViewController: mainVC)
        
        tabBarController.setViewControllers([mainNC], animated: false)
        
//        firstVC.addLocationDelegate = secondVC
//        secondVC.revealLocationDelegate = firstVC
        
        if let items = tabBarController.tabBar.items {
            for item in items {
                item.title = ""
                item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0);
            }
        }

        window = UIWindow()
        window?.backgroundColor = .white
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}
