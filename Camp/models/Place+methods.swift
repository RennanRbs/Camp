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
    var imageCover: UIImage? {
        set(value) {
            if let image = value {
                self.coverImage = image.jpegData(compressionQuality: 1.0)
            }
        }
        
        get {
            if let data = self.coverImage {
                return UIImage(data: data)
            }
            
            return nil
        }
    }
}
