//
//  GatherView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//


import SwiftUI

struct GatherView: View{
//    @EnvironmentObject var user: User
    @StateObject var vm: GatherViewModel
    var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0, "Zonk": 0]
    )
    
    var body: some View{
        GeometryReader{ geo in
            ZStack{
                Image("55")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    ForEach(vm.ingridients_temp) { ingridient in
                        Image(ingridient.isUp ? ingridient.imageName : "")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .foregroundColor(.pink)
                            .position(ingridient.position)
                            .onTapGesture {
                                for i in 0..<vm.ingridients_temp.count{
                                    if vm.ingridients_temp[i].id == ingridient.id{
                                        vm.ingridients_temp[i].isUp = false
                                        print(ingridient)
                                        self.user.inventoryIngridient[ingridient.name]!+=1
//                                        print(user.inventoryIngridient)
                                    }
                                    
                                }
                                
                            }
                    }
                }
                .onAppear {
                    startGame(size: geo.size)
                }
            }
        }
    }
    func startGame(size: CGSize) {
        placeHerbRandomly(in: size)
        Timer.scheduledTimer(withTimeInterval: vm.timerInterval, repeats: true) { _ in
            updateHerb()
        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + gameDuration) {
//            endGame()
//        }
    }

    func placeHerbRandomly(in size: CGSize) {
        vm.ingridients_temp.indices.forEach { index in
            var ingridient = ingridients[index]
            ingridient.position = CGPoint(x: CGFloat.random(in: 0..<size.width), y: CGFloat.random(in: 0..<size.height))
            vm.ingridients_temp[index] = ingridient
        }
    }

    func updateHerb() {
        let randomIndex = Int.random(in: 0..<vm.ingridients_temp.count)
        vm.ingridients_temp[randomIndex].isUp.toggle()
    }

    func endGame() {
        vm.ingridients_temp.removeAll()
    }

}


struct GatherView_Previews: PreviewProvider {

    static var previews: some View {
        GatherView(vm: GatherViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

