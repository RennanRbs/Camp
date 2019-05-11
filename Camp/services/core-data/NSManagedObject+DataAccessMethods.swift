//
//  NSManagedObject+DataAccessMethods.swift
//  Camp
//
//  Created by Bruno Rocha on 11/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObject {
    
    /// A helper method to make data fetching on Core Data
    ///
    /// - Parameter predicate: the query predicate
    /// - Returns: an array with results of the predicate query
    static func query(predicate: NSPredicate? = nil) -> [NSManagedObject] {
        let context = CoreDataManager.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>()
        
        request.entity = self.entity()
        request.predicate = predicate
        
        do {
            let fetchedResults = try context.fetch(request)
            if let resultObjects = fetchedResults as? [NSManagedObject] {
                return resultObjects
            }
        }
        catch {
            print("NSManagedObject query exeption")
            print(error)
        }
        
        return []
    }
    
    /// Returns all registers of an entity
    ///
    /// - Returns: an array with all objects of an entity
    static func getAll() -> [NSManagedObject] {
        return self.query()
    }
    
    /// Delete all register of an entity
    static func deleteAll() {
        let context = CoreDataManager.context
        
        if let entityName = self.entity().name {
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                let results = try context.fetch(fetchRequest)
                for result in results {
                    if let resultAsManagedObject = result as? NSManagedObject {
                        context.delete(resultAsManagedObject)
                        CoreDataManager.saveContext()
                    }
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }
    }
}
