//
//  ViewController.swift
//  CollectionMultipleSelect
//
//  Created by Kittitat Rodphotong on 12/17/2559 BE.
//  Copyright © 2559 DevGo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Variable
    let viewModel = ViewModel()
    let cvCellIdentifier = "CollectionViewCell"
    var cvCell: CollectionViewCell?

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.allowsMultipleSelection = true
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
        cvCell = collectionView.dequeueReusableCell(withReuseIdentifier: cvCellIdentifier,
                                                    for: indexPath) as? CollectionViewCell
        if let cvCell = cvCell {
            return cvCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        print("IndexPath: \(indexPath.row)")
    }
}

// MARK: - UICollectionView Layout
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let wAndH: CGFloat = (collectionView.bounds.size.width)/2
        return CGSize(width: wAndH, height: wAndH)
    }
}

