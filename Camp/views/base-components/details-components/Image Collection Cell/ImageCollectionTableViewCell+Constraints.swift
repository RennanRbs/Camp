//
//  ImageCollectionTableViewCell+Constraints.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

extension ImageCollectionTableViewCell {
    func addConstraintsToView() {
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            lblTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            lblTitle.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
        ])
        
        collectionImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionImage.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 5),
            collectionImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            collectionImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            collectionImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            collectionImage.heightAnchor.constraint(equalToConstant: 100.0)
        ])
    }
}
