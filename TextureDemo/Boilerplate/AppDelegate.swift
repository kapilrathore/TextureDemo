//
//  AppDelegate.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 04/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let vc = ASKGramController()
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.isTranslucent = false
        vc.title = "TextureDemo"
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        return true
    }
}
