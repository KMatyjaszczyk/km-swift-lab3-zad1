//
//  ContentView.swift
//  km-lab3-zad1
//
//  Created by student on 25/05/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ApplicationViewModel
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!!")
            ChooseImageView(viewModel: viewModel)
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ApplicationViewModel())
}
