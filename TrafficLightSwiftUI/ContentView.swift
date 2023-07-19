//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Armen on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                RedSignal(color: .red)
                    .offset(y: -150)
                    .opacity(opacityRed)
                YellowSignal(color: .yellow)
                    .offset(y: -100)
                    .opacity(opacityYellow)
                GreenSignal(color: .green)
                    .offset(y: -50)
                    .opacity(opacityGreen)
                
                Button(action: {
                    buttonPressed()
                }, label: {
                    if opacityRed == 1 || opacityYellow == 1 || opacityGreen == 1 {
                        Text("NEXT")
                    } else {
                        Text("Start")
                    }
                })
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 150, height: 50)
                .background(Color.blue).cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
                .offset(y: 60)
            }
        }
    }
    
    private func buttonPressed() {
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityYellow = 1.0
            opacityRed = 0.3
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.3
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.3
            opacityRed = 1.0
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
