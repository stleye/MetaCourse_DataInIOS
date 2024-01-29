//
//  Customer+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 29/01/2024.
//
//

import Foundation
import CoreData


extension Customer {

    private static func request() -> NSFetchRequest<NSFetchRequestResult> {
        let request: NSFetchRequest<NSFetchRequestResult> =
           NSFetchRequest(entityName: String(describing: Self.self))
        request.returnsDistinctResults = true
        request.returnsObjectsAsFaults = true
        return request
    }

    @NSManaged public var eMail: String?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var fromLocation: NSSet?
    @NSManaged public var toDessert: NSSet?
    @NSManaged public var toDish: NSSet?
    
    static func with(firstName: String,
                     lastName: String,
                    _ context: NSManagedObjectContext) -> Customer? {
        let request = Customer.request()
        let predicate = NSPredicate(format: "fistName == %@ AND lastName == %@", firstName, lastName)
        request.predicate = predicate

        do {
            guard let results = try context.fetch(request) as? [Customer],
                  results.count > 0
            else { return nil }
            return results.first
        } catch (let error) {
            print(error.localizedDescription)
            return nil
        }
    }

    static func delete(with firstName: String,
                       lastName: String,
                       _ context:NSManagedObjectContext) -> Bool {
        let request = Customer.request()
        let predicate = NSPredicate(format: "fistName == %@ AND lastName == %@", firstName, lastName)
        request.predicate = predicate

        do {
            guard let results = try context.fetch(request) as? [Customer], results.count == 1
            else {
                return false
            }
            context.delete(results[0])
            return true
        } catch (let error) {
            print(error.localizedDescription)
            return false
        }
    }

    class func deleteAll(_ context: NSManagedObjectContext) {
        let request = Customer.request()
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)

        do {
            guard let persistentStoreCoordinator = context.persistentStoreCoordinator else { return }

            try persistentStoreCoordinator.execute(deleteRequest, with: context)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }

}

// MARK: Generated accessors for fromLocation
extension Customer {

    @objc(addFromLocationObject:)
    @NSManaged public func addToFromLocation(_ value: Location)

    @objc(removeFromLocationObject:)
    @NSManaged public func removeFromFromLocation(_ value: Location)

    @objc(addFromLocation:)
    @NSManaged public func addToFromLocation(_ values: NSSet)

    @objc(removeFromLocation:)
    @NSManaged public func removeFromFromLocation(_ values: NSSet)

}

// MARK: Generated accessors for toDessert
extension Customer {

    @objc(addToDessertObject:)
    @NSManaged public func addToToDessert(_ value: Dessert)

    @objc(removeToDessertObject:)
    @NSManaged public func removeFromToDessert(_ value: Dessert)

    @objc(addToDessert:)
    @NSManaged public func addToToDessert(_ values: NSSet)

    @objc(removeToDessert:)
    @NSManaged public func removeFromToDessert(_ values: NSSet)

}

// MARK: Generated accessors for toDish
extension Customer {

    @objc(addToDishObject:)
    @NSManaged public func addToToDish(_ value: Dish)

    @objc(removeToDishObject:)
    @NSManaged public func removeFromToDish(_ value: Dish)

    @objc(addToDish:)
    @NSManaged public func addToToDish(_ values: NSSet)

    @objc(removeToDish:)
    @NSManaged public func removeFromToDish(_ values: NSSet)

}

extension Customer : Identifiable {

}
