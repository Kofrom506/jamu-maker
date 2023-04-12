//
//  HeroView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct HeroView: View {
//    @EnvironmentObject var user: User
    var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0]
    )
    @State var health: Int = 0
    var body: some View {
        VStack{
            ProgressBar(colorProgress: Color.red, colorBackground: JColor.white_level_progress, value: $health, maxValue: 100)
            Button("Press") {
                self.health-=20
            }
            Text("Press")
                .onTapGesture {
                    self.health-=1
                }
        }.padding(.horizontal,ViewPadding.medium)
            .onAppear{
                onAppear()
            }
        
    }
}

extension HeroView {
    
    private func onAppear() {
        Task {
            self.health = user.health
            
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
 
