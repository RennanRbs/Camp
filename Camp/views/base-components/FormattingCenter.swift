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
    func titleWhiteLeft(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 25)
        parameter.text = text
        parameter.textAlignment = .left
        parameter.textColor = UIColor.init(named: "White")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }

    func subTitleGreenLeft(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 20)
        parameter.text = text
        parameter.textAlignment = .left
        parameter.textColor = UIColor.init(named: "Green")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleWhiteLeft(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 15)
        parameter.text = text
        parameter.textAlignment = .left
        parameter.textColor = UIColor.init(named: "White")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleWhiteCenter(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 15)
        parameter.text = text
        parameter.textAlignment = .center
        parameter.textColor = UIColor.init(named: "White")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleGrayLeft(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 15)
        parameter.text = text
        parameter.textAlignment = .left
        parameter.textColor = UIColor.init(named: "Gray")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subTitleBlackLeft(parameter: UILabel, text: String) {
        parameter.font = UIFont.boldSystemFont(ofSize: 15)
        parameter.text = text
        parameter.textAlignment = .left
        parameter.textColor = UIColor.init(named: "Black")
        parameter.translatesAutoresizingMaskIntoConstraints = false
    }
}
