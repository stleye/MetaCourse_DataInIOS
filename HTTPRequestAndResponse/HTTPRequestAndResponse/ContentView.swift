//
//  ContentView.swift
//  HTTPRequestAndResponse
//
//  Created by Sebastian Tleye on 27/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.fetchLittleLemonMenu()
            }, label: {
                Text("Fetch Menu")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
