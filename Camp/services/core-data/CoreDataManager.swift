//
//  CoreDataManager.swift
//  Camp
//
//  Created by Bruno Rocha on 10/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores(completionHandler: { ( _, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    static func saveContext () throws {
        let context = persistentContainer.viewContext
        if (context.hasChanges) {
            do {
                try context.save()
            } catch {
                throw error as NSError
            }
        }
    }
}
