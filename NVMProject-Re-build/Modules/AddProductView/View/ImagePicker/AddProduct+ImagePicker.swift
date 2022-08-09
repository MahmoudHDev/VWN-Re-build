//
//  AddProduct+ImagePicker.swift
//  NVMProject-Re-build
//
//  Created by Mahmoud on 8/9/22.
//

import UIKit

extension AddProductViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerConfig() {
        picker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        self.arrImgs.append(selectedImage)
        print(arrImgs.count)
        self.productCollectionView.reloadData()
        self.dismiss(animated: true, completion: nil)
    }
}
