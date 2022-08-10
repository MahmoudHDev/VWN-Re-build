//
//  Home+CollectionView.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/5/22.
//

import UIKit
import CoreData

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
        listsCollectionView.backgroundColor     = .none
        productsCollectionView.backgroundColor  = .none
        
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
            return products?.count ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Catgories
        if collectionView == catgoriesCollectionView {
            let cellOne: CatgoriesCollectionViewCell = catgoriesCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.catgoires, for: indexPath) as! CatgoriesCollectionViewCell
            let title = arrCatgories[indexPath.row].title
            let isSelected = arrCatgories[indexPath.row].isSelected
            cellOne.setCell(title: title ?? "" , isSelected: isSelected ?? false)
            
            return cellOne
            // Lists
        }else if collectionView == listsCollectionView {
            let cellTwo: ListCollectionViewCell = listsCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.list, for: indexPath) as! ListCollectionViewCell
            let title = arrList[indexPath.row].title ?? ""
            let isSelected = arrList[indexPath.row].isSelected ?? false
            
            cellTwo.setCell(title: title, isSelected: isSelected )
            return cellTwo
        }else {
            let cellThree: ProductsCollectionViewCell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCells.products, for: indexPath) as! ProductsCollectionViewCell
            
            let prod = self.products![indexPath.row]
            cellThree.setCell(img: UIImage(systemName: "house")!, title: prod.productName ?? "", price: prod.price ?? "none")
            
            return cellThree
        }
        
    }
    
    
}
//MARK:- Flow Layout

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     if collectionView == productsCollectionView {
         let width = self.productsCollectionView.bounds.width/2 - 10
         return CGSize(width: width, height: 245)

     } else if  collectionView == catgoriesCollectionView {
         return CGSize(width:151 , height: 81)
     }else{
        let title = arrList[indexPath.row].title ?? ""
            
         let width = title.size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]).width
        
         return CGSize(width: width+25, height: 24)
     }
    }
 
    
}

//MARK:- Delegate
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        if collectionView == self.catgoriesCollectionView {
        var i = 0
            while i < self.arrCatgories.count {
                self.arrCatgories[i].isSelected = false
                i += 1
            }
            self.arrCatgories[indexPath.row].isSelected = true
            collectionView.reloadData()
        }else if collectionView == self.listsCollectionView {
            var i = 0
            while i < self.arrList.count {
                self.arrList[i].isSelected = false
                i += 1
            }
            arrList[indexPath.row].isSelected = true
            collectionView.reloadData()
        }else {
            collectionView.reloadData()
            print("indexPath")
        }
        
    }
}


