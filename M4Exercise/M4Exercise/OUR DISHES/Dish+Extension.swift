import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems: [MenuItem],
                                 _ context: NSManagedObjectContext) {

        for item in menuItems {

            let newDish = Dish.with(name: item.title, context)
            newDish?.name = item.title
            newDish?.price = Float(item.price) ?? 0
        }

        Dish.save(context)

    }

}
