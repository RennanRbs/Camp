//
//  CoreDataManagerTests.swift
//  CampTests
//
//  Created by Bruno Rocha on 11/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import XCTest
@testable import Camp

class CoreDataManagerTests: XCTestCase {
    
    var coreDataManager: CoreDataManager!
    
    override func setUp() {
        super.setUp()
        self.coreDataManager = CoreDataManager.shared
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /// Checks if CoreDataManager singleton instance isn't null
    func test_singletonInstance_isntNull() {
        let instance = CoreDataManager.shared
        XCTAssertNotNil(instance)
    }
    
    /// Checks if CoreDataManager persistent container isn't null
    func test_persistentContainer_isntNull() {
        let persistentContainer = CoreDataManager.shared.persistentContainer
        XCTAssertNotNil(persistentContainer)
    }
    
    func test_saveContext_throwsAnException() {
        XCTAssertNoThrow(try CoreDataManager.shared.saveContext())
    }
}
