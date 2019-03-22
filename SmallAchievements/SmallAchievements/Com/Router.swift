//
//  Router.swift
//  SmallAchievements
//
//  Created by George on 20/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import UIKit

struct Router {
    
    static func show(viewController: UIViewController?, isAnimated: Bool = true) {
        guard let viewController = viewController else { return }
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let snapShot = appDelegate?.window?.snapshotView(afterScreenUpdates: true) else {
            return
        }
        if isAnimated {
            Router.presentViewControllerAnimated(viewController: viewController, snapShot: snapShot)
        } else {
            let  appDelegate = UIApplication.shared.delegate as? AppDelegate
            appDelegate?.window?.rootViewController = viewController
        }
    }
    
    fileprivate static func presentViewControllerAnimated(viewController: UIViewController, snapShot: UIView) {
        let  appDelegate = UIApplication.shared.delegate as? AppDelegate
        viewController.view.addSubview(snapShot)
        appDelegate?.window?.rootViewController = viewController
        UIView.animate(withDuration: 1.0, animations: {
            snapShot.layer.opacity = 0
            snapShot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        }, completion: { _ in
            snapShot.removeFromSuperview()
        })
    }
    
}
