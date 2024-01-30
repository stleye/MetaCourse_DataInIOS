//
//  Customer+CoreDataProperties.swift
//  SortingFilteringMenu
//
//  Created by Sebastian Tleye on 30/01/2024.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var email: String?
    @NSManaged public var fullName: String?
    @NSManaged public var toDessert: NSSet?

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

extension Customer : Identifiable {

}
