//
//  AppDelegate.swift
//  SmallAchievements
//
//  Created by George on 18/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import UIKit
import Firebase
import Rswift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        if !AuthManager.isLogged() { openLogin() }
        
        return true
    }
    
    func openLogin() {
        Router.show(viewController: R.storyboard.auth().instantiateInitialViewController(), isAnimated: true)
    }
}

