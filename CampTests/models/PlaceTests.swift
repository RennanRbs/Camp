//
//  PlaceTests.swift
//  CampTests
//
//  Created by Bruno Rocha on 12/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import XCTest
@testable import Camp

class PlaceTests: XCTestCase {
    
    var placeAddress: Address!
    var placeResource: Resource!
    var placeNearbyPlace: NearbyPlace!
    var placePhoto: Photo!
    var placeName: String!
    var placeCategory: String!
    var placeInformations: String!

    override func setUp() {
        let context = CoreDataManager.shared.context
        self.placeAddress = Address(context: context)
        self.placeAddress.city = "Fortaleza"
        self.placeAddress.neighbourhood = "Aldeota"
        self.placeAddress.postalCode = "12345-678"
        
        self.placeResource = Resource(context: context)
        self.placeResource.name = "Wifi"
        
        self.placeNearbyPlace = NearbyPlace(context: context)
        self.placeNearbyPlace.name = "Bus Station"
        
        self.placePhoto = Photo(context: context)
        self.placePhoto.image = Data(base64Encoded: "data")
        
        self.placeName = "Camp Rock"
        self.placeCategory = "Camp"
        self.placeInformations = "A very nice place to camp"
    }

    override func tearDown() {
        
    }
    
    /// Checks if place create method works properly
    func test_createPlace_success() {
        let place = Place.create(withName: self.placeName, category: self.placeCategory, address: self.placeAddress, resources: [self.placeResource], nearbyPlaces: [self.placeNearbyPlace], informations: self.placeInformations, photos: [self.placePhoto])
        
        XCTAssertEqual(place.name, placeName)
        XCTAssertEqual(place.category, placeCategory)
        XCTAssertEqual(place.placeAddress, placeAddress)
        XCTAssertEqual(place.informations, placeInformations)
        
        if let placeResource = self.placeResource,
           let placeNearbyPlace = self.placeNearbyPlace,
           let placePhoto = self.placePhoto {
            XCTAssertEqual(place.placePhoto, NSSet(array: [placePhoto]))
            XCTAssertEqual(place.placeResource, NSSet(array: [placeResource]))
            XCTAssertEqual(place.placeNearby, NSSet(array: [placeNearbyPlace]))
        }
    }       
}
