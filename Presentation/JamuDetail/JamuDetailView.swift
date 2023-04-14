//
//  JamuDetailView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 11/04/23.
//

import SwiftUI

struct JamuDetailView: View {
    var jamu: Jamu
    var body: some View {
        VStack(alignment: .leading){
            Text("Plant Details")
                .font(JFont.bold(fontFamily: .poppins, size: 20))
                .frame(maxWidth: .infinity, alignment: .center)
            Image(jamu.imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .padding(50)
            HStack(alignment: .center){
                Text(jamu.name)
                    .font(JFont.semiBold(fontFamily: .poppins, size: 25))
               
            }
            Spacer()
                .frame(height: 10)
            Text("Bahan Bahan" ?? "No Description")
                .font(JFont.regular(fontFamily: .poppins, size: 15))
                .foregroundColor(JColor.grey)
                .lineSpacing(3)
            
            
                
            Spacer()
            Text("Plant Now")
                .foregroundColor(.white)
                .font(JFont.medium(fontFamily: .poppins, size: 15))
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(JColor.green)
                .cornerRadius(25)
                .padding(.horizontal,50)
//            NavigationLink(destination: mainView()) {
//                Text("Plant Now")
//                    .foregroundColor(.white)
//                    .font(JFont.medium(fontFamily: .poppins, size: 15))
//                    .frame(maxWidth: .infinity, maxHeight: 40)
//                    .background(JColor.green)
//                    .cornerRadius(25)
//                    .padding(.horizontal,50)
//
//            }
            
        }.padding(.horizontal, ViewPadding.xmedium)
    }
}


struct JamuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JamuDetailView(jamu: jamuKunyitAsam)
    }
}
