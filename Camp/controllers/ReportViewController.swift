//
//  ReportViewController.swift
//  Camp
//
//  Created by Bruno Rocha on 09/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    let imageViewRating: RatingView = {
        let imageView = RatingView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    
    func setup() {
        view.addSubview(imageViewRating)

    }
}
