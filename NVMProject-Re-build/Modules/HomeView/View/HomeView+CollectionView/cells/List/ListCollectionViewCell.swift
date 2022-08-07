//
//  ListCollectionViewCell.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var title: UILabel!
    
    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "ListCollectionViewCell", bundle: nil)
    }
    
    func setCell(title: String, isSelected: Bool) {
        self.title.text = title
        if isSelected {
            self.title.textColor = .black
        }else{
            self.title.textColor = .gray
        }
        
    }
}


