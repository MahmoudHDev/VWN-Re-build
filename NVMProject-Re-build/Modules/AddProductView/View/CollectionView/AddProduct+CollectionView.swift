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
        print(arrImgs.count)
        if arrImgs.count == 0 {
            return 1
        } else if arrImgs.count > 0  {
            return arrImgs.count + 1
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == self.arrImgs.count - 1  {
            let cell: ImgCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImgCollectionViewCell.cellId , for: indexPath) as! ImgCollectionViewCell
            if arrImgs.count > 0 {
                
                cell.setCell(img: arrImgs[indexPath.row])
                cell.deleteImg = { [weak self] in
                    guard let self = self else {return}
                    self.arrImgs.remove(at: indexPath.row)
                }
            }
            
            return cell
        }else{
            let cell: AddCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: AddCollectionViewCell.cellId, for: indexPath) as! AddCollectionViewCell
            return cell
        }
    }
    
}

//MARK:- Delegate
extension AddProductViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == self.arrImgs.count - 1 {
            print("indexPath OF the image \(indexPath.row)")
        }else{
            self.picker.sourceType = .photoLibrary
            self.present(self.picker, animated: true, completion: nil)
        }
    }
}
