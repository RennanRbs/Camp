//
//  CollectionViewImageListDelegate.swift
//  Camp
//
//  Created by Cibele Paulino on 16/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

protocol CollectionViewImageListDelegate: AnyObject {
    func numberOfItemsInSection(_ collection: UICollectionView) -> Int
    func cellForItemAt(_ collection: UICollectionView, index: Int) -> UIImage
}
