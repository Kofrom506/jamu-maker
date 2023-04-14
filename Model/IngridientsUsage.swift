//
//  IngridientsUsage.swift
//  jamuMaking
//
//  Created by Evan Susanto on 11/04/23.
//

import Foundation

class IngridientUsage: ObservableObject, Identifiable, Equatable{
    static func == (lhs: IngridientUsage, rhs: IngridientUsage) -> Bool {
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

class IngridientsUsage: ObservableObject{
    @Published var ingridientsU: [IngridientUsage]
    
    init(){
        self.ingridientsU = [jaheU, kunyitU, temulawakU, kayuManisU, sambilotoU, kencurU, cabeJawaU, bawangPutihU, daunKemangiU]
    }
}



let jaheU = IngridientUsage(ingridient: jahe, usage: 0)
let kunyitU = IngridientUsage(ingridient: kunyit, usage: 0)
let temulawakU = IngridientUsage(ingridient: temulawak, usage: 0)
let kayuManisU = IngridientUsage(ingridient: kayuManis, usage: 0)
let daunSirihU = IngridientUsage(ingridient: daunSirih, usage: 0)
let sambilotoU = IngridientUsage(ingridient: sambiloto, usage: 0)
let kencurU = IngridientUsage(ingridient: kencur, usage: 0)
let cabeJawaU = IngridientUsage(ingridient: cabeJawa, usage: 0)
let bawangPutihU = IngridientUsage(ingridient: bawangPutih, usage: 0)
let daunKemangiU = IngridientUsage(ingridient: daunKemangi, usage: 0)


