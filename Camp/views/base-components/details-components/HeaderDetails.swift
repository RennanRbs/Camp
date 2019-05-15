//
//  HeaderDetails.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class HeaderDetails: UIView {

    var lblName: UILabel = {
       let label = UILabel()
        FormattingCenter().titleWhiteLeftFor(label, text: label.text ?? "")
        return label
    }()
    
    var lblOperation: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleGreenLeftFor(label, text: label.text ?? "")
        return label
    }()
    
    var lblDistance: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleWhiteLeftFor(label, text: label.text ?? "")
        return label
    }()
    
    var imgRating: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "RatingImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var lblRating: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleWhiteCenterFor(label, text: label.text ?? "")
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
}
