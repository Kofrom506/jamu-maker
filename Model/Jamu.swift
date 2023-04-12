//
//  Jamu.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import Foundation


struct Jamu: Hashable, Identifiable{
    var id = UUID()
    var name: String
    var imageName: String = ""
    var effect: Int
    var jamuReceipt: Dictionary<String, Int>
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}



var jamus: [Jamu] = [jamuKunyitAsam
                     
//                     jamuJahe,jamuTemulawak,jamuKayuManis,jamuSirih,jamuSambiloto,jamuCabeJawa,jamuBawangPutih,jamuKemangi,jamuBerasKencur,jamuKunyitMadu
]
let jamuKunyitAsam = Jamu(name: "Kunyit Asam", effect: 20, jamuReceipt: ["Kunyit": 2, "Temulawak": 1])
//let jamuJahe = Jamu(name: "Jahe", ingridients: [jahe], effect: 10)
//let jamuTemulawak = Jamu(name: "Temulawak", ingridients: [temulawak], effect: 10)
//let jamuKayuManis = Jamu(name: "Kayu Manis", ingridients: [kayuManis],effect: 10)
//let jamuSirih = Jamu(name: "Sirih", ingridients: [daunSirih],effect: 10)
//let jamuSambiloto = Jamu(name: "Sambiloto", ingridients: [sambiloto],effect: 10)
//let jamuCabeJawa = Jamu(name: "Cabe Jawa", ingridients: [cabeJawa],effect: 10)
//let jamuBawangPutih = Jamu(name: "Bawang Putih", ingridients: [bawangPutih],effect: 10)
//let jamuKemangi = Jamu(name: "Kemangi", ingridients: [daunKemangi],effect: 10)
//
//let jamuBerasKencur = Jamu(name: "Kemangi", ingridients: [kencur],effect: 10)
//let jamuKunyitMadu = Jamu(name: "Kunyit Madu", ingridients: [kunyit],effect: 10)

// Yg kurang : gula merah, madu, asam jawa
//let kayuManis = Ingredients(name: "Kayu Manis", imageName: "kayuManis")
//let daunSirih = Ingredients(name: "Daun Sirih", imageName: "daunSirih")
//let sambiloto = Ingredients(name: "Sambiloto", imageName: "sambiloto")
//let kencur = Ingredients(name: "Kencur", imageName: "kencur")
//let cabeJawa = Ingredients(name: "Cabe Jawa", imageName: "cabeJawa")
//let bawangPutih = Ingredients(name: "Bawang Putih", imageName: "bawangPutih")
//let daunKemangi = Ingredients(name: "Daun Kemangi", imageName: "daunKemangi")
