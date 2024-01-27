//
//  HTTPRequestAndResponseApp.swift
//  HTTPRequestAndResponse
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import SwiftUI

@main
struct HTTPRequestAndResponseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
