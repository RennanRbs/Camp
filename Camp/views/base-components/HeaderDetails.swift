//
//  HeaderDetails.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class HeaderDetails: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblOperation: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var imgRating: UIImageView!
    @IBOutlet weak var lblRating: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("HeaderDetails", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        labelsFormat()
        imageFormat()
    }

    func labelsFormat() {
        FormattingCenter().mainTitleLightLeft(parameter: lblName, text: lblName.text!)
        FormattingCenter().mainTitleGreenLeft(parameter: lblOperation, text: lblOperation.text!)
        FormattingCenter().secTitleLightLeft(parameter: lblDistance, text: lblDistance.text!)
        FormattingCenter().secTitleLightCenter(parameter: lblRating, text: lblRating.text!)
    }

    func imageFormat() {
        imgRating.image = UIImage.init(named: "RatingImage")
        imgRating.contentMode = .scaleAspectFit
    }
}
