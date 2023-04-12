//
//  JamuView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct JamuView: View {
    
    //    @EnvironmentObject var user: User
    var user: User = User(
        name: "Evan Susanto",
        inventoryIngridient: ["Jahe": 0, "Kunyit": 0, "Temulawak": 0, "Kayu Manis": 0, "Daun Sirih": 0, "Sambiloto": 0, "Kencur": 0, "Cabe Jawa": 0, "Bawang Putih": 0, "Daun Kemangi": 0],
        inventoryJamu: ["Kunyit Asam": 0,"Jahe": 0, "Sirih": 0,"Temulawak": 0,"Kayu Manis": 0,"Sambiloto": 0,"Cabe Jawa": 0,"Bawang Putih": 0,"Kemangi": 0,"Beras Kencur": 0,"Kunyit Madu": 0]
    )
    
    private let size: CGFloat = 100
    
    @State var count: Int = 0
    @State var water: Bool = false
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image("53")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack(spacing: ViewPadding.xxxlarge){
                        VStack{
                            ForEach(ingridientsU[0...ingridientsU.count/2]) { ingridientU in
                                AddSubstractValue(title: ingridientU.ingridient.name, ingridientUsage: ingridientU)
                                    .padding(.vertical, ViewPadding.small)
                            }
                        }
                        
                        Divider()
                            .overlay(.black)
                            .frame(height: geo.size.height*1/3)
                        VStack{
                            ForEach(ingridientsU[ingridientsU.count/2...ingridientsU.count-1]) { ingridientU in
                                AddSubstractValue(title: ingridientU.ingridient.name, ingridientUsage: ingridientU)
                                    .padding(.vertical, ViewPadding.small)
                            }
                        }
                    }
                    Spacer()
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
                                print("Evan")
                                print(ingridientsU)
                                print(brew(ingridientsU: ingridientsU))
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
        JamuView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
