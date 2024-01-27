//
//  Networking.swift
//  HTTPRequestAndResponse
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import Foundation

struct Networking {
    
    let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"
    
    func requestMenu() throws {
        guard let url = URL(string: littleLemonAddress) else { throw NSError() }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                let string = String(data: data, encoding: .utf8) ?? ""
                print(string)
            }
        }.resume()
        
    }
    
}
