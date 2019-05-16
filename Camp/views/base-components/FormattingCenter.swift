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
}
