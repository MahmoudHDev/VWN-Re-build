//
//  ProductsCollectionViewCell.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var containerV   : UIView!
    @IBOutlet weak var img          : UIImageView!
    @IBOutlet weak var title        : UILabel!
    @IBOutlet weak var price        : UILabel!
    
    
    //MARK:- Nib

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "ProductsCollectionViewCell", bundle: nil)
    }
    
    func setCell(img: UIImage, title:String, price: String) {
        
        self.img.image  = img
        self.title.text = title
        self.price.text = price
    }
    
}

