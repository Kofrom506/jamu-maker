//
//  ProgressBar.swift
//  jamuMaking
//
//  Created by Evan Susanto on 26/03/23.
//

import SwiftUI

struct ProgressBar: View {
    var colorProgress: Color
    var colorBackground: Color
    
//    private var colorProgress: Color
//    private var colorBackground: CGColor
    @Binding var value: Int
    var maxValue: Int
    var height: CGFloat = 17
    var body: some View {
        ZStack{
            GeometryReader {
                geometry in
                        ZStack(alignment: .leading) {
                            Rectangle().frame(width: geometry.size.width , height: height)
                                .opacity(0.3)
                                .foregroundColor(colorBackground)
                            Rectangle().frame(width: min(CGFloat(Float(self.value)/Float(self.maxValue))*geometry.size.width, geometry.size.width), height: height)
                                .foregroundColor(colorProgress)
                                .animation(.linear)
                        }.cornerRadius(45.0)
                    
            }
        }
            }
    }


struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(colorProgress: .blue, colorBackground: .white,value: .constant(60),maxValue: 100)
    }
}
