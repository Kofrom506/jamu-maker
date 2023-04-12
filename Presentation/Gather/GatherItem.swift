//
//  GatherItem.swift
//  jamuMaking
//
//  Created by Evan Susanto on 29/03/23.
//

import SwiftUI

struct GatherItem: View {
    var isUp: Bool
//    var onTap: () -> Void
    
    func onTap(){
        print("Tapped")
    }
    
    var body: some View {
        Image(systemName: isUp ? "circle.fill" : "circle")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.brown)
            .onTapGesture {
                if isUp {
                    onTap()
                }
            }
    }
}

struct GatherItem_Previews: PreviewProvider {
//    func coba(){
//        print("tapped")
//    }
    static var previews: some View {
        GatherItem(isUp: true)
    }
}
