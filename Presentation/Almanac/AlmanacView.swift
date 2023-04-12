//
//  AlmanacView.swift
//  jamuMaking
//
//  Created by Evan Susanto on 24/03/23.
//

import SwiftUI

struct AlmanacView: View {
    
    var body: some View {
        
        GeometryReader { geo in
            VStack {
                Spacer()
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 20){
                        ForEach(jamus) { jamu in
                            JamuCardView(jamu: jamu, geo: geo)
                                .rotation3DEffect(Angle(degrees: Double(geo.frame(in: .global).minX) / -20), axis: (x: 0.0, y: 10.0, z: 0.0))
                        }
                    }.padding(.horizontal, ViewPadding.xmedium)
                }.shadow(radius: 10)
                    .padding(.horizontal, -ViewPadding.xmedium)
                Spacer()
            }
        }
    }
}

struct AlmanacView_Previews: PreviewProvider {
    static var previews: some View {
        AlmanacView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
