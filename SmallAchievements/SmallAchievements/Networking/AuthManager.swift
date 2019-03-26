//
//  AuthManager.swift
//  SmallAchievements
//
//  Created by George on 19/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

final class AuthManager {
    
    static func createUser(with email: String, password: String, completion: @escaping(Response<User>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (res, err) in
            if let err = err {
                completion(.failure(err))
            }
            
            if let res = res {
                completion(.success(res.user))
            }
        }
    }
    
    static func login(with email: String, password: String, completion: @escaping(Response<User>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
            if let err = err {
                completion(.failure(err))
            }
            
            if let res = res {
                completion(.success(res.user))
            }
        }
    }
    
    static func forgotPassoword() {
        
    }
    
    static func logout() {
        
    }
    
    static func isLogged() -> Bool {
        return Auth.auth().currentUser != nil ? true : false
    }
}
