//
//  Response.swift
//  SmallAchievements
//
//  Created by George on 26/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import Foundation

enum Response<T> {
    case success(T)
    case failure(Error)
}

enum SaveUserResponse<T> {
    case success(T)
    case errorOnImage(Error)
    case errorOnUser(Error)
    case error(Error)
}

enum SaveUserError {
    case errorOnImage
    case errorOnUser
    case error
}

