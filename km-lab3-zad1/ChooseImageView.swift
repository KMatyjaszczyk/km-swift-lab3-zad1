//
//  ChooseImageView.swift
//  km-lab3-zad1
//
//  Created by student on 25/05/2024.
//

import SwiftUI

struct ChooseImageView: View {
    @ObservedObject var viewModel: ApplicationViewModel
    @State var selectedCategory: ImageCategory = .FLOWER
    @State var randomedImage = ""
    var body: some View {
        VStack {
            if (randomedImage != "") {
                Image(randomedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            Picker("Provide category", selection: $selectedCategory) {
                ForEach(ImageCategory.allCases) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            Button(action: {
                let numberOfImages = viewModel.getImageNumbersForCategories()
                    .first { $0.0 == selectedCategory }!
                    .1
                var array: [String] = []
                switch selectedCategory {
                case .FLOWER:
                    array = viewModel.flowers
                case .ANIMAL:
                    array = viewModel.animals
                case .CAR:
                    array = viewModel.cars
                }
                if !array.isEmpty {
                    let randomIndex = Int.random(in: 0..<numberOfImages)
                    let randomElement = array[randomIndex]
                    randomedImage = randomElement
                    switch selectedCategory {
                    case .FLOWER: viewModel.images.flower = randomedImage
                    case .ANIMAL: viewModel.images.animal = randomedImage
                    case .CAR: viewModel.images.car = randomedImage
                    }
                }
            }) {
                Text("Random image")
            }
        }
    }
}

#Preview {
    ChooseImageView(viewModel: ApplicationViewModel())
}
