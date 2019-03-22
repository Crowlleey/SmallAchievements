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
//        let storyboard = R.storyboard.auth()
//        let contraller = storyboard.instantiateViewController(withIdentifier: R.)
//
        
//      Router.show(viewController: R.storyboard.main.instantiateInitialViewController(), isAnimated: false)
        Router.show(viewController: R.storyboard.auth.instantiateInitialViewController(), isAnimated: true)

        
//        let i = R.story
        
        //        let storyboard = R.s// UIStoryboard(name: "MyStoryboardName", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "someViewController")
//        self.present(controller, animated: true, completion: nil)
    }
}

