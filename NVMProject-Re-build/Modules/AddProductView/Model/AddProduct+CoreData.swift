//
//  AddProduct+CoreData.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/10/22.
//

import UIKit
import CoreData

extension AddProductViewController {
    
    func saveModel(productData: Product) {
        
        let storyB  = UIStoryboard(name: "Home", bundle: nil)
        let vc      = storyB.instantiateViewController(identifier: "HomeView") as! HomeViewController
        
        do{
            try self.context.save()
            
        }catch {
            print("Error")
        }
        vc.fetchData()
    }
    
}
