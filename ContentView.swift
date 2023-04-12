//
//  ContentView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    let screenRouter = ScreenRouter(rootScreen: .home, factory: ScreenRouterFactory())
    @StateObject var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0]
    )
    
    
    var body: some View {
        MainView()
            .environmentObject(screenRouter)
            .environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
