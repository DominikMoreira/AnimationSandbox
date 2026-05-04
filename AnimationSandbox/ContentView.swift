//
//  ContentView.swift
//  AnimationSandbox
//
//  Created by Dominik de Jesus Moreira on 04.05.26.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Text("Click Me")
            .onTapGesture {
                //  animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeInOut(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: animationAmount
                    )
            )
            .padding(100)
            .onAppear {
                animationAmount = 2
            }
    }
}

#Preview {
    ContentView()
}
