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
        let viewExample = HeaderDetails()
        
        view.addSubview(viewExample)
        
        viewExample.translatesAutoresizingMaskIntoConstraints = false
        
        viewExample.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        viewExample.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewExample.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        viewExample.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        
        viewExample.lblName.text = "Teste"
        viewExample.lblRating.text = "2.3"
        viewExample.lblDistance.text = "1.8 Km"
        viewExample.lblOperation.text = "Funcionando"
        
    }
}
