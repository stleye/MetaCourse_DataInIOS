//
//  MenuItem.swift
//  HTTPRequestAndResponse
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import Foundation

struct Menu: Decodable {

    enum CodingKeys: String, CodingKey {
        case items = "menu"
    }

    struct MenuItem: Decodable {
        let id: Int
        let title: String
        let price: String
    }

    let items: [MenuItem]

}
