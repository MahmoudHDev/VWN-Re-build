//
//  AddProduct+CollectionView.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/9/22.
//

import UIKit

//MARK:- DataSource
extension AddProductViewController: UICollectionViewDataSource {
    
    func collectionViewConfig() {
        // Delegate & DataSource
        productCollectionView.delegate      = self
        productCollectionView.dataSource    = self
        
        // Cells
        productCollectionView.register(AddCollectionViewCell.myNib(), forCellWithReuseIdentifier: AddCollectionViewCell.cellId)
        productCollectionView.register(ImgCollectionViewCell.myNib(), forCellWithReuseIdentifier: ImgCollectionViewCell.cellId)

        // Collection View Style
        productCollectionView.backgroundColor = .none

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
    
}

//MARK:- Delegate
extension AddProductViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
