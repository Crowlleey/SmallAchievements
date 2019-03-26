//
//  LoginViewController.swift
//  SmallAchievements
//
//  Created by George on 26/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var constraintToBot: NSLayoutConstraint!
    
    @IBOutlet weak var fieldsView: UIView! {
        didSet {
            fieldsView.roundedCornerColor(radius: roundRadius)
        }
    }
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btEnter: UIButton! {
        didSet {
            btEnter.roundedCornerColor(radius: roundRadius)
        }
    }
    @IBOutlet weak var btRegister: UIButton! {
        didSet {
            btRegister.roundedCornerColor(radius: roundRadius)
        }
    }
    
    private let roundRadius: CGFloat = 8.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func btLogin(_ sender: Any) {
        guard let tfEmail = tfEmail.text, let tfPassword = tfPassword.text else { return }
        login(email: tfEmail, password: tfPassword)
    }
    
    @IBAction func didTapRegister(_ sender: Any) {
        performSegue(withIdentifier: "toRegister", sender: nil)
    }
    
    func login(email: String, password: String) {
        showLoader()
        AuthManager.login(with: email, password: password) { [weak self] in
            guard let self = self else { return }
            switch $0 {
            case .success(_):
                self.openApp()
            case .failure(let err):
                self.alertSimpleWarning(title: "Error", message: err.localizedDescription, action: nil)
                self.dismissLoader()
            }
        }
    }
    
    func openApp() {
        Router.show(viewController: R.storyboard.main().instantiateInitialViewController(), isAnimated: true)
    }
    
    @IBAction func unwindToLogin(segue:UIStoryboardSegue) { }
}
