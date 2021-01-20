//
//  Nutrition.swift
//  foodmarket
//
//  Created by Raj Malhotra on 19.01.21.
//

import Foundation

class Nutrition: ObservableObject {
    
    let Nutritions: [Facts] = [
        .init(id: 0, Info: "Fats", Value: 40),
        .init(id: 1, Info: "Squirrels", Value: 30)
    ]
    
}

class Energy: ObservableObject {
    let Energys: [Facts] = [
        .init(id: 0, Info: "Kcal", Value: 430),
        .init(id: 1, Info: "Kj", Value: 1720)
    ]
}

struct Facts: Identifiable {
let id: Int
let Info: String
let Value: Int
}
