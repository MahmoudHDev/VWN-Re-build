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

    func setCell(title: String, isSelected: Bool) {
        self.title.text = title
        if isSelected {
            containerV.backgroundColor  = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            self.title.textColor        = .white
        }else{
            containerV.backgroundColor  = .white
            self.title.textColor        = .black

        }
    }
}
