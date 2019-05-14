//
//  HeaderView.swift
//  Camp
//
//  Created by Rennan Rebouças on 09/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit
class HeaderView: UIView {
    @IBOutlet var contentView: UIView!
    @IBAction func editProfile_button(_ sender: Any) {
    }
    
    @IBOutlet weak var imagemUser_UiImage: UIImageView!
    
    @IBOutlet weak var nameProfile_label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func commonInit() {
        Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imagemUser_UiImage.layer.borderWidth = 4
        imagemUser_UiImage.layer.borderColor = UIColor(red:26/255, green:188/255, blue:156/255, alpha: 1).cgColor
            }
}
