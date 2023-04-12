//
//  IngridientsUsage.swift
//  jamuMaking
//
//  Created by Evan Susanto on 11/04/23.
//

import Foundation

class IngridientsUsage: ObservableObject, Identifiable, Equatable{
    static func == (lhs: IngridientsUsage, rhs: IngridientsUsage) -> Bool {
        lhs.id == rhs.id
    }
    let id: UUID = UUID()
    let ingridient: Ingredient
    @Published var usage: Int
    
    init(ingridient: Ingredient, usage: Int) {
        self.ingridient = ingridient
        self.usage = usage
    }
}

var ingridientsU: [IngridientsUsage] = [jaheU, kunyitU, temulawakU, kayuManisU, sambilotoU, kencurU, cabeJawaU, bawangPutihU, daunKemangiU]

let jaheU = IngridientsUsage(ingridient: jahe, usage: 0)
let kunyitU = IngridientsUsage(ingridient: kunyit, usage: 0)
let temulawakU = IngridientsUsage(ingridient: temulawak, usage: 0)
let kayuManisU = IngridientsUsage(ingridient: kayuManis, usage: 0)
let daunSirihU = IngridientsUsage(ingridient: daunSirih, usage: 0)
let sambilotoU = IngridientsUsage(ingridient: sambiloto, usage: 0)
let kencurU = IngridientsUsage(ingridient: kencur, usage: 0)
let cabeJawaU = IngridientsUsage(ingridient: cabeJawa, usage: 0)
let bawangPutihU = IngridientsUsage(ingridient: bawangPutih, usage: 0)
let daunKemangiU = IngridientsUsage(ingridient: daunKemangi, usage: 0)


