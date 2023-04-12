//
//  HomeView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var screenRouter: ScreenRouter
//    @EnvironmentObject var user: User
    var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0]
    )
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                VStack{
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    Spacer()
                    Image("")
                }
                VStack{
                    Text("Welcome \(user.name)")
                        .font(.custom("Luminari", size: 100))
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    PrimaryButton(title: "Brew Jamu",backgroundColor: JColor.greenPastel,foregroundColor: .red) {
                        screenRouter.navigateTo(.jamu)
                    }
                    PrimaryButton(title: "Gather  Ingridients",backgroundColor: JColor.greenPastel,foregroundColor: .red) {
                        screenRouter.navigateTo(.gather)
                    }
                    PrimaryButton(title: "Almanac  ",backgroundColor: JColor.greenPastel,foregroundColor: .red) {
                        screenRouter.navigateTo(.almanac)
                    }
                    PrimaryButton(title: "Hero  Jamu",backgroundColor: JColor.greenPastel,foregroundColor: .red) {
                        screenRouter.navigateTo(.hero)
                    }
                    Spacer()
                }.padding(.vertical, ViewPadding.xlarge)
            }.ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
