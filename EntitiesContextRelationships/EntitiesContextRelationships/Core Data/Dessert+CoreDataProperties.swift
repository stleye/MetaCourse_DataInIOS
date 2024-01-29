//
//  Dessert+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 29/01/2024.
//
//

import Foundation
import CoreData


extension Dessert {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dessert> {
        return NSFetchRequest<Dessert>(entityName: "Dessert")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: String?
    @NSManaged public var size: String?
    @NSManaged public var fromCustomer: Customer?

}

extension Dessert : Identifiable {

}
