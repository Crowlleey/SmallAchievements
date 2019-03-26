//
//  ValidatingError.swift
//  SmallAchievements
//
//  Created by George on 26/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import Foundation

enum ValidatingError: Error {
    case invalidName
    case invalidEmail
    case invalidPassword
    case samePassword
}

extension ValidatingError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .invalidName:
            return NSLocalizedString(R.string.localizable.errorName(), comment: R.string.localizable.error())
        case .invalidEmail:
            return NSLocalizedString(R.string.localizable.errorEmail(), comment: R.string.localizable.error())
        case .invalidPassword:
            return NSLocalizedString(R.string.localizable.errorPassword(), comment: R.string.localizable.error())
        case .samePassword:
            return NSLocalizedString(R.string.localizable.errorPassword(), comment: R.string.localizable.error())
        }
    }
}
