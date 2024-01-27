//
//  ViewModel.swift
//  HTTPRequestAndResponse
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import Foundation

class ViewModel: ObservableObject {

    func fetchLittleLemonMenu() {
        try? Networking().requestMenu(onCompletion: { menu in
            print(menu)
        })
    }
    
}
