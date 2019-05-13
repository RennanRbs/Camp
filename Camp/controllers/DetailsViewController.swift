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
        
        let rect = CGRect(x: 0.0, y: 100.0, width: 414.0, height: 84.0)

        

        let viewExample = HeaderDetails.init(frame: rect)
        
//        viewExample.translatesAutoresizingMaskIntoConstraints = false
        
        
        viewExample.lblName.text = "Teste"
        viewExample.lblRating.text = "2.3"
        viewExample.lblDistance.text = "1.8 Km"
        viewExample.lblOperation.text = "Funcionando"
        
        view.addSubview(viewExample)
    }
}
