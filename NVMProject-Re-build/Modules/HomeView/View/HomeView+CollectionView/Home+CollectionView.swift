//
//  Home+CollectionView.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit

//MARK:- DataSource
extension HomeViewController: UICollectionViewDataSource {
    
    func collectionViewConfig() {
        // Delegate
        
        catgoriesCollectionView.delegate    = self
        listsCollectionView.delegate        = self
        productsCollectionView.delegate     = self
        
        // DataSource
        catgoriesCollectionView.dataSource  = self
        listsCollectionView.dataSource      = self
        productsCollectionView.dataSource   = self
        
        // Style
        catgoriesCollectionView.backgroundColor = .none
        listsCollectionView.backgroundColor = .none
        productsCollectionView.backgroundColor = .none
        
    }
    
    func collectionViewNibs() {
        catgoriesCollectionView.register(CatgoriesCollectionViewCell.myNib(), forCellWithReuseIdentifier: K.collectionViewCells.catgoires)
        listsCollectionView.register(ListCollectionViewCell.myNib(), forCellWithReuseIdentifier: K.collectionViewCells.list)
        productsCollectionView.register(ProductsCollectionViewCell.myNib(), forCellWithReuseIdentifier: K.collectionViewCells.products)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == catgoriesCollectionView{
            return arrCatgories.count
        }else if collectionView == listsCollectionView  {
            return arrList.count
        }else {
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == catgoriesCollectionView {
            let cellOne: CatgoriesCollectionViewCell = catgoriesCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.catgoires, for: indexPath) as! CatgoriesCollectionViewCell
            let title = arrCatgories[indexPath.row]
            cellOne.setCell(title: title)
            return cellOne
        }else if collectionView == listsCollectionView {
            let cellTwo: ListCollectionViewCell = listsCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.list, for: indexPath) as! ListCollectionViewCell
            let title = arrList[indexPath.row]
            cellTwo.setCell(title: title)
            return cellTwo
        }else {
            let cellThree: ProductsCollectionViewCell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.products, for: indexPath) as! ProductsCollectionViewCell
            
            return cellThree
        }
        
    }
    
    
}
//MARK:- Flow Layout

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize()
    }
 */
    
}

//MARK:- Delegate
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}


