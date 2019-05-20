//
//  CommentsCollectionViewCell.swift
//  Camp
//
//  Created by Cibele Paulino on 20/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class CommentsCollectionViewCell: UICollectionViewCell {
    var lblName: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleBlackLeftFor(label, text: label.text ?? "Name")
        return label
    }()
    
    var lblHour: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleBlackLeftFor(label, text: label.text ?? "00:00")
        return label
    }()
    
    var lblDay: UILabel = {
        let label = UILabel()
        FormattingCenter().subTitleBlackLeftFor(label, text: label.text ?? "00/00/0000")
            return label
    }()
    
    var lblComment: UILabel = {
    let label = UILabel()
        FormattingCenter().subTitleBlackLeftFor(label, text: label.text ?? "Comentário teste apenas para testar se o comentário está funcionando adequadamente dentro do projeto")
        return label
    }()
    
    private func commonInit() {
//        addSubview(imgItem)
//        addConstraintsToView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
}
