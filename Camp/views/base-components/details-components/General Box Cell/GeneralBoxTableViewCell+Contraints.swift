//
//  GeneralBoxTableViewCell+Contraints.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

extension GeneralBoxTableViewCell {
    func addConstraintsToView() {
        lblGeneral.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblGeneral.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lblGeneral.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            lblGeneral.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
        ])
        
        viewBox.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewBox.topAnchor.constraint(equalTo: lblGeneral.bottomAnchor, constant: 5),
            viewBox.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            viewBox.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            viewBox.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
        
        lblContact.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblContact.topAnchor.constraint(equalTo: lblGeneral.bottomAnchor, constant: 15),
            lblContact.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 10),
            lblContact.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -10)
        ])
        
        lblPhoneNumber.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblPhoneNumber.topAnchor.constraint(equalTo: lblContact.bottomAnchor, constant: 5),
            lblPhoneNumber.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 15)
        ])
        
        lblEmail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblEmail.topAnchor.constraint(equalTo: lblContact.bottomAnchor, constant: 5),
            lblEmail.leftAnchor.constraint(equalTo: lblPhoneNumber.rightAnchor, constant: 10),
            lblEmail.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -15)
        ])
        
        lblAddress.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblAddress.topAnchor.constraint(equalTo: lblPhoneNumber.bottomAnchor, constant: 10),
            lblAddress.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 10),
            lblAddress.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -10)
        ])
        
        lblAddressDetail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblAddressDetail.topAnchor.constraint(equalTo: lblAddress.bottomAnchor, constant: 5),
            lblAddressDetail.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 15),
            lblAddressDetail.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
        ])
        
        bntRoute.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bntRoute.centerYAnchor.constraint(equalTo: lblAddressDetail.centerYAnchor, constant: 0),
            bntRoute.leftAnchor.constraint(equalTo: lblAddressDetail.rightAnchor, constant: 10),
            bntRoute.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -10),
            bntRoute.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        lblOperation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblOperation.topAnchor.constraint(equalTo: lblAddressDetail.bottomAnchor, constant: 10),
            lblOperation.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 10),
            lblOperation.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -10)
        ])
        
        lblOperationDetail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblOperationDetail.topAnchor.constraint(equalTo: lblOperation.bottomAnchor, constant: 5),
            lblOperationDetail.leftAnchor.constraint(equalTo: viewBox.leftAnchor, constant: 15),
            lblOperationDetail.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
        ])
        
        bntRating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bntRating.centerYAnchor.constraint(equalTo: lblOperationDetail.centerYAnchor, constant: 0),
            bntRating.leftAnchor.constraint(equalTo: lblOperationDetail.rightAnchor, constant: 10),
            bntRating.rightAnchor.constraint(equalTo: viewBox.rightAnchor, constant: -10),
            bntRating.bottomAnchor.constraint(equalTo: viewBox.bottomAnchor, constant: -15),
            bntRating.centerXAnchor.constraint(equalTo: bntRoute.centerXAnchor, constant: 0),
            bntRating.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
}
