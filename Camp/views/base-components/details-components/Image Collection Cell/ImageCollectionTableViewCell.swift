//
//  ImageCollectionTableViewCell.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class ImageCollectionTableViewCell: UITableViewCell {
    
    lazy var collectionImage: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: 42, height: 38)
        layout.scrollDirection = .horizontal
        
        let collection = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        return collection
    }()
    
     var lblTitle: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleGrayLeftFor(label, text: label.text ?? "Resource")
        return label
    }()
    
    let identifier = "ImageCell"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    private func commonInit() {
        addSubview(lblTitle)
        addSubview(collectionImage)

        collectionImage.delegate = self
        collectionImage.dataSource = self
        configCollection()
        
        addConstraintsToView()
    }
}
