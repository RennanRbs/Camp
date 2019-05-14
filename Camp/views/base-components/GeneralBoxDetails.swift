//
//  GeneralBoxDetails.swift
//  Camp
//
//  Created by Cibele Paulino on 14/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import UIKit

class GeneralBoxDetails: UIView {
    var lblGeneral: UILabel! = {
        let label = UILabel()
        FormattingCenter().secTitleGrayLeft(parameter: label, text: "General")
        return label
    }()
    
    var viewBox: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.init(named: "LightGray")
        view.layer.borderColor = UIColor.init(named: "Green")?.cgColor
        view.layer.borderWidth = 2.0
        view.layer.cornerRadius = 5.0
        return view
    }()
    
    var lblContact: UILabel! = {
        var label = UILabel()
        FormattingCenter().secTitleGrayLeft(parameter: label, text: "Contact")
        return label
    }()
}
