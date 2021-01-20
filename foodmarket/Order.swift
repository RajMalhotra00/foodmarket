//
//  Order.swift
//  foodmarket
//
//  Created by Raj Malhotra on 19.01.21.
//

import Foundation

class Order: ObservableObject {
    @Published var kilo = 1.0
    @Published var price = 20.0
    var cost: Double{
        var cost = Double(price)
        cost = kilo * price
        return cost
    }
}
