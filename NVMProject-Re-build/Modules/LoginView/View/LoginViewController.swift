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
    private let dummyDatabase = [User(email: "admin@admin.com", password: "password")]
    var sceneDelegate: SceneDelegate? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let delegate = windowScene.delegate as? SceneDelegate else { return nil }
        return delegate
    }
    
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
        
        usernameTextField.text = "admin@admin.com"
        passwordTextField.text = "password"
        
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
        // Login to database...
        let email       = self.usernameTextField.text ?? ""
        let password    = self.passwordTextField.text ?? ""
        if let user = dummyDatabase.first(where: { user in
            user.email == email && user.password == password
        }) {
            print("hi \(user.email)")
            if let homeVC = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeView") as? UITabBarController {
                UserDefaults.standard.set(true, forKey: "isFirstLogin")
                if #available(iOS 13.0, *) {
                    self.sceneDelegate?.window?.rootViewController = homeVC
                    self.sceneDelegate?.window?.makeKeyAndVisible()
                } else {
                    let appdelegate = UIApplication.shared.delegate as! AppDelegate
                    appdelegate.window!.rootViewController = homeVC
                }
            }
        }
    }
    
    @IBAction func registerBtn(_ sender: UIButton) {
        print("register button")
        // Register button
        
    }

}
