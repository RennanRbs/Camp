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
    
    static func create(withName name: String, category: String, address: Address, resources: [Resource], nearbyPlaces: [NearbyPlace], informations: String, photos: [Photo]? = nil) -> Place {
        let newPlace = Place(context: CoreDataManager.shared.context)
        newPlace.name = name
        newPlace.category = category
        newPlace.placeAddress = address
        newPlace.placeResource = NSSet(array: resources)
        newPlace.placeNearby = NSSet(array: nearbyPlaces)
        newPlace.informations = informations
        
        if let photos = photos {
            newPlace.addToPlacePhoto(NSSet(array: photos))
        }
        
        return newPlace
    }
}
