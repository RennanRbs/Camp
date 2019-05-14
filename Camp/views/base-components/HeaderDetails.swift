//
//  HeaderDetails.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class HeaderDetails: UIView {

    var lblName: UILabel! = {
       let label = UILabel()
        FormattingCenter().mainTitleLightLeft(parameter: label, text: label.text ?? "")
        return label
    }()
    
    var lblOperation: UILabel! = {
        let label = UILabel()
        FormattingCenter().mainTitleGreenLeft(parameter: label, text: label.text ?? "")
        return label
    }()
    
    var lblDistance: UILabel! = {
        let label = UILabel()
        FormattingCenter().secTitleLightLeft(parameter: label, text: label.text ?? "")
        return label
    }()
    
    var imgRating: UIImageView! = {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "RatingImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var lblRating: UILabel! = {
        let label = UILabel()
        FormattingCenter().secTitleLightCenter(parameter: label, text: label.text ?? "")
        return label
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    private func commonInit() {
        addSubview(lblName)
        addSubview(lblOperation)
        addSubview(lblDistance)
        addSubview(imgRating)
        addSubview(lblRating)
        addConstraintsToView()
        
    }
    
    func addConstraintsToView() {
        lblName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lblName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lblName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            lblName.widthAnchor.constraint(lessThanOrEqualToConstant: 334.0)
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
            imgRating.leftAnchor.constraint(equalTo: lblName.rightAnchor, constant: 2),
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
