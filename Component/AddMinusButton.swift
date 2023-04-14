//
//  AddMinusButton.swift
//  jamuMaking
//
//  Created by Evan Susanto on 08/04/23.
//

import SwiftUI

struct AddSubstractValue: View {
    @ObservedObject private var ingridientUsage: IngridientUsage
    
    private let title: String
    private let text: String
    
    init(title: String, withConcat: Bool = false, text: String = "", ingridientUsage: IngridientUsage){
        self.ingridientUsage = ingridientUsage
        self.title = title
        self.text = text
    }
    
    var body: some View {
        HStack (spacing: 0) {
            Image(ingridientUsage.ingridient.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .background(
                    Circle()
                        .foregroundColor(JColor.yellowSoft)
                        .padding(.all, -ViewPadding.small)
                ).padding(.trailing, ViewPadding.small)
            
            Text(title)
                .foregroundColor(JColor.black)
                .font(JFont.light(fontFamily: .poppins,size: 12))
                .foregroundColor(JColor.black)
                .padding(.leading, ViewPadding.small)
            
            Spacer()
            Button {
                if(ingridientUsage.usage > 0 ){
                    ingridientUsage.usage -= 1
                    print(ingridientUsage.usage)
                }
            } label: {
                Image(systemName: "minus")
                    .foregroundColor(JColor.white)
                    .frame(width: 30, height: 30)
                    .background(JColor.greenSoft)
                    .cornerRadius(10)
            }
//            if(withConcat){
//                Spacer()
//            }
            
            Text(String(ingridientUsage.usage))
                .foregroundColor(JColor.black)
                .padding(.horizontal, ViewPadding.medium)
            
//            if(withConcat){
//                Spacer()
//            }
            Button {
                ingridientUsage.usage += 1
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(JColor.white)
                    .frame(width: 30, height: 30)
                    .background(JColor.greenSoft)
                    .cornerRadius(10)
            }
        }
    }
}

struct AddSubstractValue_Previews: PreviewProvider {
    static var previews: some View {
        AddSubstractValue(title: "Evan", ingridientUsage: bawangPutihU)
    }
}
