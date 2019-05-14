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
    private let generalString: String = "General"
    private let contactString: String = "Contact"
    private let adressString: String = "Address"
    private let operationString: String = "Operation"
    private let routeString: String = "Route"
    private let rateString: String = "Rate"
    
    internal lazy var lblGeneral: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleGrayLeft(parameter: label, text: generalString )
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
    
    internal lazy var lblContact: UILabel! = {
        var label = UILabel()
        FormattingCenter().subTitleGrayLeft(parameter: label, text: contactString)
        return label
    }()
    
    var lblPhoneNumber: UILabel = {
        var label = UILabel()
        FormattingCenter().subTitleBlackLeft(parameter: label, text: label.text ?? "00 0000-0000")
        return label
    }()
    
    var lblEmail: UILabel = {
        var label = UILabel()
        FormattingCenter().subTitleBlackLeft(parameter: label, text: label.text ?? "teste@gmail.com")
        return label
    }()
    
    internal lazy var lblAddress: UILabel! = {
        var label = UILabel()
        FormattingCenter().subTitleGrayLeft(parameter: label, text: adressString)
        return label
    }()
    
    var lblAddressDetail: UILabel = {
        var label = UILabel()
        FormattingCenter().subTitleBlackLeft(parameter: label, text: label.text ?? "Rua do teste, 2011 - Teste")
        return label
    }()
    
    internal lazy var lblOperation: UILabel! = {
        var label = UILabel()
        FormattingCenter().subTitleGrayLeft(parameter: label, text: operationString)
        return label
    }()
    
    var lblOperationDetail: UILabel = {
        var label = UILabel()
        FormattingCenter().subTitleBlackLeft(parameter: label, text: label.text ?? "Segunda - Segunda")
        return label
    }()
    
    internal lazy var bntRoute: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.init(named: "LightGray")
        button.layer.borderColor = UIColor.init(named: "Orange")?.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 13.0
        button.setTitle(routeString, for: .normal)
        button.setTitleColor(UIColor.init(named: "Orange"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    internal lazy var bntRating: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.init(named: "LightGray")
        button.layer.borderColor = UIColor.init(named: "Orange")?.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 13.0
        button.setTitle(rateString, for: .normal)
        button.setTitleColor(UIColor.init(named: "Orange"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.tag = 2
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
    
    @objc func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        
        if (btnsendtag.tag == 1) {
            //Chama o delegate de rota
        } else if (btnsendtag.tag == 2) {
            //Chama o delegate de avaliar
        }
    }
}
