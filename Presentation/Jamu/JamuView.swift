//
//  JamuView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct JamuView: View {
    
//    @EnvironmentObject var user: User
    @StateObject var myIngridients:IngridientsUsage = IngridientsUsage()
    @StateObject var vm: JamuViewModel

    var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0, "Zonk": 0]
    )
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image("53")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack(spacing: ViewPadding.xxxlarge){
                        VStack{
//                            AddSubstractValue(title: kunyitU.ingridient.name, ingridientUsage: kunyitU)
//                                .padding(.vertical, ViewPadding.small)
                            
                            ForEach(myIngridients.ingridientsU[0...myIngridients.ingridientsU.count/2]) { ingridientU in
                                
                                AddSubstractValue(title: ingridientU.ingridient.name, ingridientUsage: ingridientU)
                                    .padding(.vertical, ViewPadding.small)
                            }
                        }
                        
                        Divider()
                            .overlay(.black)
                            .frame(height: geo.size.height*1/3)
                        VStack{
                            ForEach(myIngridients.ingridientsU[myIngridients.ingridientsU.count/2...myIngridients.ingridientsU.count-1]) { ingridientU in
                                AddSubstractValue(title: ingridientU.ingridient.name, ingridientUsage: ingridientU)
                                    .padding(.vertical, ViewPadding.small)
                            }
                        }
                    }
                    Spacer()
                  
                    
                   
                    Text(vm.text)
                    HStack {
                        Image("penumbuk")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width*1/4)
                        Image("kettle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width*1/4)
                            .shadow(color: Color.yellow.opacity(0.5), radius: 10)
                            .onTapGesture {
                                for i in 0...myIngridients.ingridientsU.count-1 {
                                    vm.text.append(String(repeating: myIngridients.ingridientsU[i].ingridient.code, count: myIngridients.ingridientsU[i].usage))
                                    
                                }
                                for i in 0...myIngridients.ingridientsU.count-1 {
                                    myIngridients.ingridientsU[i].usage = 0
                                    
                                }
                                
                                
                                self.myIngridients.objectWillChange.send()
                             
                                if(brew(textReceipt: vm.text, jamus: jamus).name == "Zonk"){
                                    user.inventoryJamu["Zonk"]!+=1
                                }else{
                                    user.inventoryJamu[brew(textReceipt: vm.text, jamus: jamus).name]!+=1
                                }
                                vm.text = ""
                                print(user.inventoryJamu)
                                
                            }
                        
                        Image("jug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width*1/4)
                            .scaledToFit()
                    }
                    
                    
                }
                .padding(.horizontal,ViewPadding.large)
            }
        }
    }
    
}


extension JamuView{
    func brew(textReceipt: String, jamus: [Jamu] ) -> Jamu{
        for jamu in jamus{
            if(textReceipt == jamu.codes){
                return jamu
            }
        }
        return Jamu(name: "Zonk", effect: 0, jamuReceipts: [])
    }
    
    //    func brew(ingridientsU: [IngridientsUsage]) -> String {
    //        let aa = ingridientsU.filter { ingridient in
    //            return ingridient.usage>0
    //        }.map { ingridient in
    //            ingridient.ingridient.
    //        }
    //        return ""
    //    }
    
    
    //    func brew(ingridientsU: [IngridientsUsage]) -> String{
    //        var recept: String = ""
    //        for usage in ingridientsU {
    //            switch usage {
    //            case jaheU:
    //                recept.append(multiply(count: usage.usage, character: "A"))
    //            case kunyitU:
    //                recept.append(multiply(count: usage.usage, character: "B"))
    //            case temulawakU:
    //                recept.append(multiply(count: usage.usage, character: "C"))
    //            case kayuManisU:
    //                recept.append(multiply(count: usage.usage, character: "D"))
    //            case daunSirihU:
    //                recept.append(multiply(count: usage.usage, character: "E"))
    //            case sambilotoU:
    //                recept.append(multiply(count: usage.usage, character: "F"))
    //            case cabeJawaU:
    //                recept.append(multiply(count: usage.usage, character: "G"))
    //            case bawangPutihU:
    //                recept.append(multiply(count: usage.usage, character: "H"))
    //            case daunKemangiU:
    //                recept.append(multiply(count: usage.usage, character: "I"))
    //            default:
    //                return ""
    //            }
    //
    //        }
    //        return recept
    //    }
    //
    func multiply(count: Int, character: String )->String{
        var text: String = ""
        for _ in 0..<count {
            text.append(character)
        }
        return text
    }
    
}

struct JamuView_Previews: PreviewProvider {
    static var previews: some View {
        JamuView(vm:JamuViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
