//
//  AuthManager.swift
//  SmallAchievements
//
//  Created by George on 19/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import Foundation
import Firebase

final class AuthManager {
    
    static func createAcc() {
        
    }
    
    static func login() {
        
    }
    
    static func forgotPassoword() {
        
    }
    
    static func logout() {
        
    }
    
    static func isLogged() -> Bool {
        return Auth.auth().currentUser != nil ? true : false
    }
}
