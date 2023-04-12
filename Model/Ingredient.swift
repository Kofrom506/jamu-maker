//
//  Ingredients.swift
//  jamuMaking
//
//  Created by Evan Susanto on 29/03/23.
//

import Foundation


struct Ingredient: Identifiable, Hashable{
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var isUp = false
    var position = CGPoint.zero
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}


var ingridients: [Ingredient] = [jahe, kunyit, temulawak, kayuManis, sambiloto, kencur, cabeJawa, bawangPutih, daunKemangi]

let jahe = Ingredient(name: "Jahe", imageName: "jahe")
let kunyit = Ingredient(name: "Kunyit", imageName: "kunyit")
let temulawak = Ingredient(name: "Temulawak", imageName: "temulawak")
let kayuManis = Ingredient(name: "Kayu Manis", imageName: "kayuManis")
let daunSirih = Ingredient(name: "Daun Sirih", imageName: "daunSirih")
let sambiloto = Ingredient(name: "Sambiloto", imageName: "sambiloto")
let kencur = Ingredient(name: "Kencur", imageName: "kencur")
let cabeJawa = Ingredient(name: "Cabe Jawa", imageName: "cabeJawa")
let bawangPutih = Ingredient(name: "Bawang Putih", imageName: "bawangPutih")
let daunKemangi = Ingredient(name: "Daun Kemangi", imageName: "daunKemangi")


