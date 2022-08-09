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

    @IBOutlet weak var addProductBttn: UIButton!
    
    //MARK:- Properties
    var arrCatgories    = [CatgoryModel]()
    var arrList         = [ListsModel]()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // CollectionViews
        self.collectionViewConfig()
        self.collectionViewNibs()
        // UI Style
        self.updateUI()
        // Set Models
        self.setCatgoriesModel()
        self.setListsModel()
    }
    
    //MARK:- Methods
    private func updateUI() {
        searchTextField.attributedPlaceholder = NSAttributedString(
            string: "Search",
            attributes:
                [NSAttributedString.Key.foregroundColor: UIColor.black])
        addProductBttn.layer.cornerRadius = 20
    }
    
    private func setCatgoriesModel() {
        
        self.arrCatgories = [
            CatgoryModel(isSelected: true,  title: "Breakfast"),
            CatgoryModel(isSelected: false, title: "Dinner"),
            CatgoryModel(isSelected: false, title: "Launch"),
            CatgoryModel(isSelected: false, title: "Dessert")
        ]
    }
    
    private func setListsModel() {
        self.arrList = [
            ListsModel(isSelected: true,    title: "All"),
            ListsModel(isSelected: false, title: "Plates"),
            ListsModel(isSelected: false, title: "Hot Drinks"),
            ListsModel(isSelected: false, title: "Iced Coffee"),
            ListsModel(isSelected: false, title: "Soft Drinks")

        ]
    }
    
    //MARK:- Actions

    @IBAction func addProductBtn(_ sender: UIButton ){
        let vc = UIStoryboard(name: "AddProduct", bundle: nil).instantiateViewController(identifier: "AddProduct")
        present(vc, animated: true, completion: nil)
    }

}
