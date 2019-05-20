//
//  ImageCollectionTableViewCell+CollectionView.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

extension ImageCollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func configCollection() {
        collectionImage.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        collectionImage.frame = self.frame
        collectionImage.backgroundColor = UIColor.init(named: "LightGray")
        collectionImage.layer.borderColor = UIColor.init(named: "Green")?.cgColor
        collectionImage.layer.borderWidth = 2.0
        collectionImage.layer.cornerRadius = 5.0
        collectionImage.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        if let cell = cell as? ImageCollectionViewCell {
            cell.imgCell = UIImage.init(named: "RatingImage")
            //            cell.imgCell = delegate?.cellForItemAt(self, index: indexPath.row)
            return cell
        }
        return cell
    }
}
