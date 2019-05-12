//
//  CoreDataManager.swift
//  Camp
//
//  Created by Bruno Rocha on 10/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import CoreData

/// A helper class to deal with app Core Data containera and contexta
class CoreDataManager {
    
    /// CoreDataManager singleton instance
    static let shared = CoreDataManager()
    
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores(completionHandler: { ( _, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    func saveContext() throws {
        let context = self.context
        if (context.hasChanges) {
            do {
                try context.save()
            } catch {
                throw error
            }
        }
    }
    
    var context: NSManagedObjectContext {
        return self.persistentContainer.viewContext
    }
}
