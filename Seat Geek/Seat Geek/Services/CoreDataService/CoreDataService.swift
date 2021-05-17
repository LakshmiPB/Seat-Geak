//
//  CoreDataService.swift
//  Seat Geek
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import Foundation
import CoreData

class CoreDataService {
  
    private static var defaultInstance:CoreDataService? = nil
    private var persistentContainer: NSPersistentContainer? = nil
  
    class func defaultService()->CoreDataService {
        if(defaultInstance == nil) {
            defaultInstance = CoreDataService()
            defaultInstance?.initializeStack()
        }
        return defaultInstance!
    }
    
    // Mark a Sports event for given 'eventIDToAdd' as favorite
    @discardableResult
    func markFavorite(toEvent eventIDToAdd:String)->CoreDataService {
        if(self.events(forEventID: eventIDToAdd).count > 0) {
            // Safety Check: It means particular event is already added as favorite
            return self
        }
        self.add(newEntityWithEventID: eventIDToAdd)
        return self
    }
    
    // Un-Mark a Sports event for given 'eventIDToAdd' as favorite
    @discardableResult
    func unmarkFavorite(toEvent eventIDToAdd:String) -> CoreDataService {
        self.remove(newEntityWithEventID: eventIDToAdd)
        return self
    }
    
    // Check if given sports event for given 'eventIDToCheck' is marked as favorite
    @discardableResult
    func doesEntryExist(forEventID eventIDToCheck:String) -> Bool {
        return self.events(forEventID: eventIDToCheck).count>0
    }
    
    private func events(forEventID eventID:String)->[FavoriteSportsEvents] {
        if let context = self.persistentContainer?.viewContext {
            let fetchRequest:NSFetchRequest<FavoriteSportsEvents> = FavoriteSportsEvents.fetchRequest()
            fetchRequest.predicate = NSPredicate(format: "eventID == %@",eventID.lowercased())
            do {
                return try context.fetch(fetchRequest)
            }
            catch {
              // Implement with code to handle the error appropriately.
            }
        }
        return [FavoriteSportsEvents]()
    }
    
    private func add(newEntityWithEventID eventID:String) {
        if let context = self.persistentContainer?.viewContext {
            if let favoriteEntity = NSEntityDescription.insertNewObject(forEntityName: "FavoriteSportsEvents", into: context) as? FavoriteSportsEvents {
                favoriteEntity.eventID = eventID.lowercased()
                self.saveContext()
            }
        }
    }
    
    private func remove(newEntityWithEventID eventID:String) {
        if let context = self.persistentContainer?.viewContext {
            let allEventsForThisID = self.events(forEventID: eventID)
            for event in allEventsForThisID {
                context.delete(event)
            }
            self.saveContext()
        }
    }
    
    func initializeStack() {
        self.persistentContainer = NSPersistentContainer(name: "Seat_Geek")
        self.persistentContainer?.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
              // Implement with code to handle the error appropriately.
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    func saveContext () {
        if let context = self.persistentContainer?.viewContext {
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    // Implement with code to handle the error appropriately.
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
            }
        }
    }
  
}
