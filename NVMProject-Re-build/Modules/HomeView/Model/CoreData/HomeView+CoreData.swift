//
//  HomeView+CoreData.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/10/22.
//

import UIKit
import CoreData

extension HomeViewController {
    
    func fetchData()  {
        print("Fetching Data ")
        do {
            self.products = try context.fetch(Product.fetchRequest())
            DispatchQueue.main.async {
                self.productsCollectionView.reloadData()
            }

        }catch {
            print("Error \(error.localizedDescription)")
        }
    }
}
