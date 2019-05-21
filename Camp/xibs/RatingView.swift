//
//  RatingView.swift
//  Camp
//
//  Created by Rennan Rebouças on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit
class RatingView: UIView {
    @IBOutlet var contentView: RatingView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func commonInit() {
        Bundle.main.loadNibNamed("RatingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}
