//
//  HeaderDetails+Constraints.swift
//  Camp
//
//  Created by Cibele Paulino on 14/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

extension HeaderDetails {
    func addConstraintsToView() {
        lblName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lblName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
            ])
        
        lblOperation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblOperation.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            lblOperation.topAnchor.constraint(equalTo: lblName.bottomAnchor, constant: 2),
            lblName.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
            ])
        
        lblDistance.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblDistance.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            lblDistance.topAnchor.constraint(equalTo: lblOperation.bottomAnchor, constant: 2),
            lblName.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
            ])
        
        imgRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgRating.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imgRating.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            imgRating.leftAnchor.constraint(greaterThanOrEqualTo: lblName.rightAnchor, constant: 20),
            imgRating.widthAnchor.constraint(lessThanOrEqualToConstant: 42.0),
            imgRating.heightAnchor.constraint(lessThanOrEqualToConstant: 38.0)
            ])
        
        lblRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblRating.topAnchor.constraint(equalTo: imgRating.bottomAnchor, constant: 10),
            lblRating.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            lblRating.centerXAnchor.constraint(equalTo: imgRating.centerXAnchor, constant: 0)
            ])
    }
}
