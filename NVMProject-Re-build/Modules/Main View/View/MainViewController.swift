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
    
    //MARK:- Properties

    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.layer.cornerRadius = 8
        buttonsContainer.layer.cornerRadius = 8
    }
    //MARK:- Methods

    //MARK:- Actions


}

