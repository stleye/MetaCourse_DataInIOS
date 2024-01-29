//
//  Location+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 29/01/2024.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var toCustomer: Customer?

}

extension Location : Identifiable {

}
