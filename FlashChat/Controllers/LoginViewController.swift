//
//  LoginViewController.swift
//  FlashChat
//
//  Created by Edgar on 8/29/20.
//  Copyright © 2020 Edgar. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text,
            let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let e = error {
                    print("Error on sign in \(e)")
                    let alert = UIAlertController(title: "Login Error", message: e.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    self.performSegue(withIdentifier: Constants.Segues.loginSegue, sender: self)
                }
            }
        }
    }
    
}
