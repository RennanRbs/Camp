//
//  FormattingCenter.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

class FormattingCenter {
    //Labels
    func titleWhiteLeftFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = text
        label.textAlignment = .left
        label.textColor = UIColor.init(named: "White")
        label.translatesAutoresizingMaskIntoConstraints = false
    }

    func subTitleGreenLeftFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = text
        label.textAlignment = .left
        label.textColor = UIColor.init(named: "Green")
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleWhiteLeftFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = text
        label.textAlignment = .left
        label.textColor = UIColor.init(named: "White")
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleWhiteCenterFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = text
        label.textAlignment = .center
        label.textColor = UIColor.init(named: "White")
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleGrayLeftFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = text
        label.textAlignment = .left
        label.textColor = UIColor.init(named: "Gray")
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleBlackLeftFor(_ label: UILabel, text: String) {
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = text
        label.textAlignment = .left
        label.textColor = UIColor.init(named: "Black")
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    //Buttons
    func buttonOrangeFor(_ button: UIButton, text: String) {
        button.backgroundColor = UIColor.init(named: "LightGray")
        button.layer.borderColor = UIColor.init(named: "Orange")?.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 13.0
        button.setTitle(text, for: .normal)
        button.setTitleColor(UIColor.init(named: "Orange"), for: .normal)
    }
    
    //Views
    func viewBoxBackgroundLightGrayBorderGreenFor(_ view: UIView) {
        view.backgroundColor = UIColor.init(named: "LightGray")
        view.layer.borderColor = UIColor.init(named: "Green")?.cgColor
        view.layer.borderWidth = 2.0
        view.layer.cornerRadius = 5.0
    }
}
