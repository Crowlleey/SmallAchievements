//
//  RegisterViewModel.swift
//  SmallAchievements
//
//  Created by George on 26/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import Foundation
import Rswift

struct UserRegisterViewModel {
    
    private let EmailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    private let Format = "SELF MATCHES %@"
    
    var email: String!
    var password: String!
    var confirmPassword: String!
    
    init(email: String, password: String, confirmPassword: String) {
        self.email = email
        self.password = password
        self.confirmPassword = confirmPassword
    }
    
    func validate() throws {
        //RegEx to test email
        let emailTest = NSPredicate(format: Format, EmailRegEx)
        
        if !emailTest.evaluate(with: email){
            throw ValidatingError.invalidEmail
        }
        if password.count < 6 {
            throw ValidatingError.invalidPassword
        }
        if password != confirmPassword {
            throw ValidatingError.samePassword
        }
    }
}

