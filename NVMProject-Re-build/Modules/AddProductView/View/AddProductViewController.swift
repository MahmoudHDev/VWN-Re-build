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
    @IBOutlet weak var productCollectionView        : UICollectionView!
    
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
    var picker          = UIImagePickerController()
    var mealQuantity    : Int = 0
    var priceQuantity   : Int = 0
    var num             : Int = -1
    var itemType        : [String]  = ["Breakfast", "Dinner", "Launch", "Dessert"]
    var arrImgs        : [UIImage] = []
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewConfig()
        self.imagePickerConfig()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.viewStyle()
        self.buttonsStyle()
        self.buttonsPadding()
    }
    
    //MARK:- Methods
    
    func viewStyle() {
        
        self.productNameView.layer.cornerRadius = 20
        self.productInfoView.layer.cornerRadius = 20
        self.MealView       .layer.cornerRadius = 20
        self.itemTypeView   .layer.cornerRadius = 20
        self.priceView      .layer.cornerRadius = 20
    }
    
    func buttonsStyle() {
        self.mealQuantityUp      .layer.cornerRadius = 8
        self.mealQuantityDown    .layer.cornerRadius = 8
        self.itemTypeQuantityUp  .layer.cornerRadius = 8
        self.itemTypeQuantityDown.layer.cornerRadius = 8
        self.priceUp             .layer.cornerRadius = 8
        self.priceDown           .layer.cornerRadius = 8
        
        self.doneBtn             .layer.cornerRadius = 20
    }
    
    func buttonsPadding() {
        self.productNameTextField.setLeftPaddingPoints(22)
        self.productInfoTextField.setLeftPaddingPoints(22)
        self.mealTextField       .setLeftPaddingPoints(22)
        self.itemTypeTextField   .setLeftPaddingPoints(22)
        self.priceTextField      .setLeftPaddingPoints(22)
    }
    
    //MARK:- Actions
    
    // Meal Buttons
    @IBAction func mealUp(_ sender: UIButton) {
        self.mealQuantity += 1
        self.mealTextField.text = String(mealQuantity)
        
    }
    
    @IBAction func mealDown(_ sender: UIButton) {
        self.mealQuantity -= 1
        self.mealTextField.text = String(mealQuantity)
    }
    
    // Item Type
    @IBAction func itemTypeUp(_ sender: UIButton) {
        // if num greater than itemType.count return the num to value of 0
        
        self.num += 1
        let type = itemType[num]
        self.itemTypeTextField.text = type
        
    }

    @IBAction func itemTypeDown(_ sender: UIButton) {
        // if num smaller than itemType.count return the num with value 0
        
        self.num -= 1
        let type = itemType[num]
        self.itemTypeTextField.text = type

    }
    
    // Price
    @IBAction func priceUp(_ sender: UIButton) {
        self.priceQuantity += 1
        self.priceTextField.text = "\(priceQuantity) L.E"
        
    }
    @IBAction func priceDown(_ sender: UIButton) {
        self.priceQuantity -= 1
        self.priceTextField.text = "\(priceQuantity) L.E"

    }
    
    // Done Button
    @IBAction func doneBtn(_ sender: UIButton) {
        // Send the model to the database
        print("save to coreData")
        // after make the condition
        self.dismiss(animated: true, completion: nil)
    }
    
    // Back Button
    @IBAction func backbtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        // Dismiss the current view
    }

}
