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
    var code: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

var ingridients: [Ingredient] = [jahe, kunyit, temulawak, kayuManis, sambiloto, kencur, cabeJawa, bawangPutih, daunKemangi]

let jahe = Ingredient(name: "Jahe", imageName: "jahe", code: "A")
let kunyit = Ingredient(name: "Kunyit", imageName: "kunyit", code: "B")
let temulawak = Ingredient(name: "Temulawak", imageName: "temulawak", code: "C")
let kayuManis = Ingredient(name: "Kayu Manis", imageName: "kayuManis", code: "D")
let daunSirih = Ingredient(name: "Daun Sirih", imageName: "daunSirih", code: "E")
let sambiloto = Ingredient(name: "Sambiloto", imageName: "sambiloto", code: "F")
let kencur = Ingredient(name: "Kencur", imageName: "kencur", code: "G")
let cabeJawa = Ingredient(name: "Cabe Jawa", imageName: "cabeJawa", code: "H")
let bawangPutih = Ingredient(name: "Bawang Putih", imageName: "bawangPutih", code: "I")
let daunKemangi = Ingredient(name: "Daun Kemangi", imageName: "daunKemangi", code: "J")


