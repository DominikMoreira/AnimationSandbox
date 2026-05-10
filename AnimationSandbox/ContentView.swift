//
//  ContentView.swift
//  AnimationSandbox
//
//  Created by Dominik de Jesus Moreira on 04.05.26.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    @State private var enabled = false

    var body: some View {
        HStack {
            Text("Inital")
                .onTapGesture {
                }
                .frame(width: 200, height: 200)
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
                .animation(.default, value: enabled)
            Text("Click Me")
                .onTapGesture {
                    enabled.toggle()
                }
                .frame(width: 200, height: 200)
                .background(enabled ? .blue : .red)
                .animation(nil, value: enabled)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
                .animation(
                    .interpolatingSpring(stiffness: 10, damping: 1),
                    value: enabled
                )
            Text("Final")
                .onTapGesture {
                }
                .frame(width: 200, height: 200)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
                .animation(.default, value: enabled)
        }

    }
}

#Preview {
    ContentView()
}
