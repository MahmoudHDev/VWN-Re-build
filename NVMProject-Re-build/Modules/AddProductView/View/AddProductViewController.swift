//
//  AddProductViewController.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/7/22.
//

import UIKit

class AddProductViewController: UIViewController {
    //MARK:- Outlets
    // CollectionView
    @IBOutlet weak var addCollectionView            : UICollectionView!
    
    // UIViews
    @IBOutlet weak var productNameView              : UIView!
    @IBOutlet weak var productInfoView              : UIView!
    @IBOutlet weak var MealView                     : UIView!
    @IBOutlet weak var itemTypeView                 : UIView!
    @IBOutlet weak var priceView                    : UIView!

    // TextFields
    @IBOutlet weak var productNameTextField         : UITextField!
    @IBOutlet weak var productInfoTextField         : UITextField!
    @IBOutlet weak var mealTextField                : UITextField!
    @IBOutlet weak var itemTypeTextField            : UITextField!
    @IBOutlet weak var priceTextField               : UITextField!
    
    // Buttons
    @IBOutlet weak var doneBtn                      : UIButton!
    
    //  Up And Downs Buttons
    //  Meals
    @IBOutlet weak var mealQuantityUp               : UIButton!
    @IBOutlet weak var mealQuantityDown             : UIButton!
    //  Item Type
    @IBOutlet weak var itemTypeQuantityUp           : UIButton!
    @IBOutlet weak var itemTypeQuantityDown         : UIButton!
    //  Price
    @IBOutlet weak var priceUp                      : UIButton!
    @IBOutlet weak var priceDown                    : UIButton!


    
    //MARK:- Propertiess

    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewStyle()
        buttonsStyle()
        buttonsPadding()
    }
    
    //MARK:- Methods
    
    func viewStyle() {
        
        productNameView.layer.cornerRadius = 20
        productInfoView.layer.cornerRadius = 20
        MealView       .layer.cornerRadius = 20
        itemTypeView   .layer.cornerRadius = 20
        priceView      .layer.cornerRadius = 20
    }
    
    func buttonsStyle() {
        mealQuantityUp      .layer.cornerRadius = 0.5 * mealQuantityUp      .bounds.size.width
        mealQuantityDown    .layer.cornerRadius = 0.5 * mealQuantityDown    .bounds.size.width
        itemTypeQuantityUp  .layer.cornerRadius = 0.5 * itemTypeQuantityUp  .bounds.size.width
        itemTypeQuantityDown.layer.cornerRadius = 0.5 * itemTypeQuantityDown.bounds.size.width
        priceUp             .layer.cornerRadius = 0.5 * priceUp             .bounds.size.width
        priceDown           .layer.cornerRadius = 0.5 * priceDown           .bounds.size.width
        
        doneBtn             .layer.cornerRadius = 20
    }
    
    func buttonsPadding() {
        productNameTextField.setLeftPaddingPoints(22)
        productInfoTextField.setLeftPaddingPoints(22)
        mealTextField       .setLeftPaddingPoints(22)
        itemTypeTextField   .setLeftPaddingPoints(22)
        priceTextField      .setLeftPaddingPoints(22)
    }
    
    //MARK:- Actions
    
    // Meal Buttons
    @IBAction func mealUp(_ sender: UIButton) {
        
    }
    
    @IBAction func mealDown(_ sender: UIButton) {
        
    }
    
    // Item Type
    @IBAction func itemTypeUp(_ sender: UIButton) {
        
    }

    @IBAction func itemTypeDown(_ sender: UIButton) {
        
    }
    
    // Price
    @IBAction func priceUp(_ sender: UIButton) {
        
    }
    @IBAction func priceDown(_ sender: UIButton) {
        
    }
    
    // Done Button
    @IBAction func doneBtn(_ sender: UIButton) {
        
    }

}
