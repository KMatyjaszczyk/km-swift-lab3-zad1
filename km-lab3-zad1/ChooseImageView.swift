//
//  ChooseImageView.swift
//  km-lab3-zad1
//
//  Created by student on 25/05/2024.
//

import SwiftUI

struct ChooseImageView: View {
    @ObservedObject var viewModel: ApplicationViewModel
    @State var selectedCategory: ImageCategory = .ANIMAL
    var body: some View {
        VStack {
            Picker("Provide category", selection: $selectedCategory) {
                ForEach(ImageCategory.allCases) { category in
                    Text(category.rawValue)
                }
            }
        }
    }
}

#Preview {
    ChooseImageView(viewModel: ApplicationViewModel())
}
