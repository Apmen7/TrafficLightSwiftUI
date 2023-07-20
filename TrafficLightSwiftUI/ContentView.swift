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
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 70) {
                TrafficLight(color: .red, opacity: opacityRed)
                TrafficLight(color: .yellow, opacity: opacityYellow)
                TrafficLight(color: .green, opacity: opacityGreen)
                Button(buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    buttonPressed()
                }
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
