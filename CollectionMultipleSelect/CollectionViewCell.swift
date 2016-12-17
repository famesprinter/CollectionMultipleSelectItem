//
//  CollectionViewCell.swift
//  CollectionMultipleSelect
//
//  Created by Kittitat Rodphotong on 12/17/2559 BE.
//  Copyright © 2559 DevGo. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    // MARK: - IBOutlet
    @IBOutlet weak var imageSelection: UIImageView!
    
    override var isSelected: Bool {
        get {
            return super.isSelected
        }
        set {
            if newValue {
                super.isSelected = true
                layer.borderWidth = 5
                layer.borderColor = UIColor.blue.cgColor
                print("selected")
            } else if newValue == false {
                super.isSelected = false
                layer.borderWidth = 0
                print("deselected")
            }
        }
    }
}
