//
//  Place+methods.swift
//  Camp
//
//  Created by Bruno Rocha on 11/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit
import CoreData

extension Place {
    var imageCover: UIImage {
        set(value) {
            self.coverImage = self.imageToData(image: value)
        }
        
        get {
            return dataToImage(data: self.coverImage)
        }
    }
    
    func dataToImage(data: Data?) -> UIImage {
        return UIImage()
    }
    
    func imageToData(image: UIImage) -> Data {
        return Data()
    }        
}
