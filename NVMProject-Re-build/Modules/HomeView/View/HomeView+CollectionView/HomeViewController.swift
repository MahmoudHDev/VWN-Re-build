//
//  HomeViewController.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var searchTextField              : UITextField!
    @IBOutlet weak var catgoriesCollectionView      : UICollectionView!
    @IBOutlet weak var listsCollectionView          : UICollectionView!
    @IBOutlet weak var productsCollectionView       : UICollectionView!

    
    //MARK:- Properties
    var arrCatgories    = ["Breakfast", "Dinner", "Launch", "Dessert"]
    var arrList         = ["All", "Plates", "Hot Drinks", "Iced Coffee", "Soft Drinks"]
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionViewConfig()
        self.collectionViewNibs()
        self.updateUI()
        
    }
    
    //MARK:- Methods
    private func updateUI() {
        searchTextField.attributedPlaceholder = NSAttributedString(
            string: "Search",
            attributes:
                [NSAttributedString.Key.foregroundColor: UIColor.black])
        
    }
    
    //MARK:- Actions



}
