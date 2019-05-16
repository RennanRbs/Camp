//
//  DetailsViewController.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        
        //HeaderDetails
        let viewHeaderDetails = HeaderDetails()
        
        view.addSubview(viewHeaderDetails)
        
        viewHeaderDetails.translatesAutoresizingMaskIntoConstraints = false
        
        viewHeaderDetails.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        viewHeaderDetails.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewHeaderDetails.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        viewHeaderDetails.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        
        viewHeaderDetails.lblName.text = "Teste"
        viewHeaderDetails.lblRating.text = "2.3"
        viewHeaderDetails.lblDistance.text = "1.8 Km"
        viewHeaderDetails.lblOperation.text = "Funcionando"
        
        //GeneralBoxDetails
        let viewGeneralBox = GeneralBoxDetails()
        view.addSubview(viewGeneralBox)
        
        viewGeneralBox.translatesAutoresizingMaskIntoConstraints = false
        
        viewGeneralBox.topAnchor.constraint(equalTo: viewHeaderDetails.topAnchor, constant: 100).isActive = true
        viewGeneralBox.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewGeneralBox.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -0).isActive = true
        viewGeneralBox.heightAnchor.constraint(equalToConstant: 400.0)
    }
}
