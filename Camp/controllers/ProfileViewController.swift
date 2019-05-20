//
//  ProfileViewController.swift
//  Camp
//
//  Created by Bruno Rocha on 09/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let imageViewHeader: HeaderView = {
        let imageView = HeaderView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageViewTimeLine: TimeLineView = {
        let imageView = TimeLineView(frame: CGRect.zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.addSubview(imageViewHeader)
        view.addSubview(imageViewTimeLine)
        imageViewHeader.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageViewHeader.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageViewHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        imageViewTimeLine.topAnchor.constraint(equalTo: imageViewHeader.bottomAnchor).isActive = true
        imageViewTimeLine.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageViewTimeLine.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageViewTimeLine.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
