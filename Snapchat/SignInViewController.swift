//
//  SignInViewController.swift
//  Snapchat
//
//  Created by Bryan Hayes on 10/2/17.
//  Copyright © 2017 ZappyCode. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signinTapped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("We tried to sign in")
            if error != nil {
                print("Hey we have an error:\(error)")
                
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("We tried to create a user")
                    
                    if error != nil {
                        print("Hey we have an error:\(error)")
                    } else {
                        print("Create user succesful")
                        self.performSegue(withIdentifier: "signinsegue", sender: nil)

                    }
                })
                
            } else {
                print("Sign in successful")
                self.performSegue(withIdentifier: "signinsegue", sender: nil)
                
            }
        })
        
    }
    
    
}

