//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Edgar on 8/29/20.
//  Copyright © 2020 Edgar. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextField.text,
            let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if let e = error {
                    print("Error on register \(e)")
                    let alert = UIAlertController(title: "Register Error", message: e.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    self.performSegue(withIdentifier: Constants.Segues.registerSegue, sender: self)
                }
            }
        }
    }
    
}
