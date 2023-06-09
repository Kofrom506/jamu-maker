//
//  FonetaButton.swift
//  jamuMaking
//
//  Created by Evan Susanto on 13/04/23.
//

import SwiftUI

import SwiftUI

struct ThemedButtonButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(
                Image(!configuration.isPressed ? "Button-1" : "Button-1-Pressed")
                    .resizable()
                    .renderingMode(.original)
            )
    }
}

struct ThemedButton: View {
    let width: CGFloat
    let height: CGFloat
    let fontSize: CGFloat
    let text: String
//    var voiceover: SoundAssets?
    var action: () -> Void = {}

//    @ObservedObject var tts = TextToSpeech()
    @State var isPressed = false
    @State var isTTS = false

    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack(alignment: .center) {
                Text(text)
//                    .font(Font.custom(AppFont.openDyslexic.rawValue, size: fontSize))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.6), radius: 8, x: 0, y: 0)
            }
            .frame(width: max(44, width), height: max(44, height), alignment: .center)
        })
        .buttonStyle(ThemedButtonButtonStyle())
    }

    func voiced(_ yes: Bool = true) -> some View {
        var view = self
        view._isTTS = State(initialValue: yes)
        return view.id(UUID())
    }
}

struct ThemedButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemedButton(
            width: 200, height: 50, fontSize: 24,
            text: "Hello World",
            action: {
                print("Pressed")
            }
        )
    }
}
