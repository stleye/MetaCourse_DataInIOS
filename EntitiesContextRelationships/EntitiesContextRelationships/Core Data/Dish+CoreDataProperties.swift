//
//  Dish+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 29/01/2024.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var name: String?
    @NSManaged public var size: String?
    @NSManaged public var price: String?
    @NSManaged public var fromCustomer: Customer?

}

extension Dish : Identifiable {

}
