//
//  Toy.swift
//  jamuMaking
//
//  Created by Evan Susanto on 26/03/23.
//

import Foundation
import SwiftUI

struct Toy {
    let id: Int
    let color: Color
}

extension Toy{
    static let all = [
        Toy(id: 1, color: .red),
        Toy(id: 2, color: .orange),
        Toy(id: 3, color: .blue),
        Toy(id: 4, color: .green),
        Toy(id: 5, color: .gray),
        Toy(id: 6, color: .purple),
        Toy(id: 7, color: .cyan)
//        Toy(id: 8, color: .red),
        
    ]
}
