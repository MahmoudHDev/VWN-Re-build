//
//  CatgoriesCollectionViewCell.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class CatgoriesCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var containerV: UIView!
    @IBOutlet weak var title: UILabel!
    
    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        containerV.layer.cornerRadius = 8
        
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "CatgoriesCollectionViewCell", bundle: nil)
    }

    func setCell(title: String) {
        self.title.text = title
    }
}
