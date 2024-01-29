//
//  ContentView.swift
//  EntitiesContextRelationships
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [],
        animation: .default)
    private var dishes: FetchedResults<Dish>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dishes) { dish in
                    NavigationLink {
                        Text("Dish \(dish.name!)")
                    } label: {
                        Text(dish.name!)
                    }
                }
                .onDelete(perform: deleteDishes)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addDish) {
                        Label("Add Dish", systemImage: "plus")
                    }
                }
            }
            Text("Select a dish")
        }
    }

    private func addDish() {
        withAnimation {
            let newDish = Dish(context: viewContext)
            newDish.name = "New Dish"

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteDishes(offsets: IndexSet) {
        withAnimation {
            offsets.map { dishes[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
