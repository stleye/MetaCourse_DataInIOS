//
//  EntitiesContextRelationshipsApp.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import SwiftUI

@main
struct EntitiesContextRelationshipsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
