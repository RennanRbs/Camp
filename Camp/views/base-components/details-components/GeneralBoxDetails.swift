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
    
    var lblPhoneNumber: UILabel = {
        var label = UILabel()
        FormattingCenter().secTitleBlackLeft(parameter: label, text: label.text ?? "00 0000-0000")
        return label
    }()
    
    var lblEmail: UILabel = {
        var label = UILabel()
        FormattingCenter().secTitleBlackLeft(parameter: label, text: label.text ?? "teste@gmail.com")
        return label
    }()
    
    var lblAddress: UILabel! = {
        var label = UILabel()
        FormattingCenter().secTitleGrayLeft(parameter: label, text: "Address")
        return label
    }()
    
    var lblAddressDetail: UILabel = {
        var label = UILabel()
        FormattingCenter().secTitleBlackLeft(parameter: label, text: label.text ?? "Rua do teste, 2011 - Teste")
        return label
    }()
    
    var lblOperation: UILabel! = {
        var label = UILabel()
        FormattingCenter().secTitleGrayLeft(parameter: label, text: "Operation")
        return label
    }()
    
    var lblOperationDetail: UILabel = {
        var label = UILabel()
        FormattingCenter().secTitleBlackLeft(parameter: label, text: label.text ?? "Segunda - Segunda")
        return label
    }()
    
    var bntRoute: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.init(named: "LightGray")
        button.layer.borderColor = UIColor.init(named: "Orange")?.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 13.0
        button.setTitle("Route", for: .normal)
        button.setTitleColor(UIColor.init(named: "Orange"), for: .normal)
        return button
    }()
    
    var bntRating: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.init(named: "LightGray")
        button.layer.borderColor = UIColor.init(named: "Orange")?.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 13.0
        button.setTitle("Rate", for: .normal)
        button.setTitleColor(UIColor.init(named: "Orange"), for: .normal)
        return button
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
        addSubview(lblGeneral)
        addSubview(viewBox)
        viewBox.addSubview(lblContact)
        viewBox.addSubview(lblPhoneNumber)
        viewBox.addSubview(lblEmail)
        viewBox.addSubview(lblAddress)
        viewBox.addSubview(lblAddressDetail)
        viewBox.addSubview(bntRoute)
        viewBox.addSubview(lblOperation)
        viewBox.addSubview(lblOperationDetail)
        viewBox.addSubview(bntRating)
        addConstraintsToView()
    }
}
