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
        NavigationView {
            VStack {
                if (viewModel.images.flower != "") {
                    Image(viewModel.images.flower)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                if (viewModel.images.animal != "") {
                    Image(viewModel.images.animal)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                if (viewModel.images.car != "") {
                    Image(viewModel.images.car)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                NavigationLink(destination: ChooseImageView(viewModel: viewModel)) {
                    Text("Choose image")
                }
            }
        }
    }
}

#Preview {
    ContentView(viewModel: ApplicationViewModel())
}
