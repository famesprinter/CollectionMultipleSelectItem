//
//  ViewController.swift
//  CollectionMultipleSelect
//
//  Created by Kittitat Rodphotong on 12/17/2559 BE.
//  Copyright © 2559 DevGo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Variable
    let viewModel = ViewModel()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - UICollectionView Delegate & DataSource
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItem()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

