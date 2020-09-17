//
//  AppDelegate.swift
//  RestCountries
//
//  Created by jekaterina.livcane on 16/09/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())
        
        return true
    }

}

