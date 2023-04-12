//
//  JamuUsage.swift
//  jamuMaking
//
//  Created by Evan Susanto on 12/04/23.
//

import Foundation

class jamuReceipt: ObservableObject, Identifiable{
//    static func == (lhs: IngridientsUsage, rhs: IngridientsUsage) -> Bool {
//        lhs.id == rhs.id
//    }
    let id: UUID = UUID()
    let ingridient: [Ingredient]
    let quantity: Int
//    @Published var usage: Int
    
    init(ingridient: Ingredient, usage: Int) {
        self.ingridient = ingridient
        self.usage = usage
    }
}
