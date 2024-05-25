//
//  ApplicationViewModel.swift
//  km-lab3-zad1
//
//  Created by student on 25/05/2024.
//

import Foundation

enum ImageCategory: String, CaseIterable, Identifiable {
    case FLOWER = "Flowers"
    case ANIMAL = "Animals"
    case CAR = "Cars"
    
    var id: String { self.rawValue }
}

struct Images {
    var flower: String = ""
    var animal: String = ""
    var car: String = ""
}

class ApplicationViewModel: ObservableObject {
    var flowers: [String] = []
    var animals: [String] = []
    var cars: [String] = []
    
    @Published var images: Images = Images()
    
    init() {
        for f in 1 ... 11 {
            flowers.append("f\(f)")
        }
        for a in 1 ... 11 {
            animals.append("a\(a)")
        }
        for c in 1 ... 11 {
            cars.append("c\(c)")
        }
    }
    
    func getImageNameForCategory(category: ImageCategory, andIndex index: Int) -> String? {
        switch category {
        case .FLOWER: return flowers[index]
        case .ANIMAL: return animals[index]
        case .CAR: return cars[index]
        }
    }
    
    func getImageNumbersForCategories() -> [(ImageCategory, Int)] {
        return [(ImageCategory.FLOWER, 11), (ImageCategory.ANIMAL, 8), (ImageCategory.CAR, 6)]
    }
}
