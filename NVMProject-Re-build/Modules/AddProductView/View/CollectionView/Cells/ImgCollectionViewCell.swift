//
//  ImgCollectionViewCell.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/9/22.
//

import UIKit

class ImgCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet private weak var containerV: UIView!
    @IBOutlet private weak var img       : UIImageView!
    //MARK:- Properties
    static let cellId = "ImgCollectionViewCell"
    var deleteImg:(()->())?

    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyle()
        
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: self.cellId, bundle: nil)
    }

    func setCell(img: UIImage) {
        self.img.image = img
    }
    
    func cellStyle() {
        self.containerV.layer.cornerRadius = 8
        self.img.layer.cornerRadius = 8
    }
    
    @IBAction func deleteImg(_ sender: UIButton) {
        self.deleteImg?()
    }
    
}
