//
//  Jamu.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import Foundation


struct Jamu: Hashable, Identifiable, Equatable{
    var id = UUID()
    var name: String
    var imageName: String = ""
    var effect: Int
    var jamuReceipts: [JamuReceipt]
    
    static func == (lhs: Jamu, rhs: Jamu) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var codes: String {
        get {
            var codes: String = ""
            var jamuReceiptSorted = self.jamuReceipts
            for item in jamuReceiptSorted{
                codes.append(item.codes)
            }
            return codes
        }
        set{
            
        }
    }
}



var jamus: [Jamu] = [jamuKunyitAsam
                     
                     //                     jamuJahe,jamuTemulawak,jamuKayuManis,jamuSirih,jamuSambiloto,jamuCabeJawa,jamuBawangPutih,jamuKemangi,jamuBerasKencur,jamuKunyitMadu
]
let jamuKunyitAsam = Jamu(name: "Kunyit Asam", effect: 20, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])


let jamuJahe = Jamu(name: "Jahe", effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuTemulawak = Jamu(name: "Temulawak", effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuKayuManis = Jamu(name: "Kayu Manis",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuSirih = Jamu(name: "Sirih",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuSambiloto = Jamu(name: "Sambiloto",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuCabeJawa = Jamu(name: "Cabe Jawa",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuBawangPutih = Jamu(name: "Bawang Putih",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuKemangi = Jamu(name: "Kemangi",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])

let jamuBerasKencur = Jamu(name: "Kemangi",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])
let jamuKunyitMadu = Jamu(name: "Kunyit Madu",effect: 10, jamuReceipts: [JamuReceipt(ingridient: kunyit, quantity: 1)])

// Yg kurang : gula merah, madu, asam jawa
//let kayuManis = Ingredients(name: "Kayu Manis", imageName: "kayuManis")
//let daunSirih = Ingredients(name: "Daun Sirih", imageName: "daunSirih")
//let sambiloto = Ingredients(name: "Sambiloto", imageName: "sambiloto")
//let kencur = Ingredients(name: "Kencur", imageName: "kencur")
//let cabeJawa = Ingredients(name: "Cabe Jawa", imageName: "cabeJawa")
//let bawangPutih = Ingredients(name: "Bawang Putih", imageName: "bawangPutih")
//let daunKemangi = Ingredients(name: "Daun Kemangi", imageName: "daunKemangi")
