import Foundation

struct JSONMenu: Codable {
    var menu: [MenuItem]
}

struct MenuItem: Codable, Identifiable {
    var id: Int
    var title: String
    var price: String
}
