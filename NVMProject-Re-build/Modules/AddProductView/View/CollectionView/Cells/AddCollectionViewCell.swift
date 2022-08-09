//
//  AddCollectionViewCell.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/9/22.
//

import UIKit

class AddCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var containerV: UIView!
    @IBOutlet weak var img       : UIImageView!
    
    //MARK:- Properties
    static let cellId = "AddCollectionViewCell"
    
    //MARK:- Nib

    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyle()
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: self.cellId, bundle: nil)
    }

    func cellStyle() {
        containerV.layer.cornerRadius = 20
        
        img.image = UIImage(systemName: "plus")
    }
}
