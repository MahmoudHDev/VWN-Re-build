//
//  ViewController.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class MainViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var buttonsContainer: UIView!
    @IBOutlet weak var signUpButton    : UIButton!
    @IBOutlet weak var bGroundImg      : UIImageView!
    //MARK:- Properties

    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        
    }
    //MARK:- Methods

    func updateUI() {
        signUpButton.layer.cornerRadius     = 20
        buttonsContainer.layer.cornerRadius = 20
        
    }
    //MARK:- Actions
    @IBAction func logInBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(identifier: "loginView")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        print("Sign Up Logic")
    }
    
}

