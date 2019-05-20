//
//  ImageCollectionViewCell+Constraints.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

extension ImageCollectionViewCell {
    func addConstraintsToView() {
        imgItem.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgItem.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imgItem.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imgItem.widthAnchor.constraint(equalTo: self.widthAnchor),
            imgItem.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
}
