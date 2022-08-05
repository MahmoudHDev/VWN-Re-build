//
//  LoginViewController.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInBtn        : UIButton!
    
    //MARK:- Properties

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldSyle()
        buttonsStyle()
    }

    //MARK:- Methods
    func textFieldSyle() {
        usernameTextField.layer.cornerRadius = 25
        passwordTextField.layer.cornerRadius = 25
        usernameTextField.layer.masksToBounds = true
        passwordTextField.layer.masksToBounds = true
        
        usernameTextField.setLeftPaddingPoints(36)
        passwordTextField.setLeftPaddingPoints(36)
        print("TextField Styled")
        
    }
    
    func buttonsStyle() {
        signInBtn.layer.cornerRadius = 8
    }
    
    //MARK:- Actions

    @IBAction func recoverPassword(_ sender: UIButton) {
        // Recover Password Logic
        print("Recover my password")
        
    }
    
    @IBAction func signInBtn(_ sender: UIButton) {
        // Sign in
        print("SignIn")
    }
    
    @IBAction func registerBtn(_ sender: UIButton) {
        print("register button")
        // Register button
        
    }

}
