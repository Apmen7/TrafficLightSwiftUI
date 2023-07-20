//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Armen on 20.07.2023.
//

import SwiftUI

struct TrafficLight: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
            .opacity(opacity)
    }
    
    struct TrafficLight_Previews: PreviewProvider {
        static var previews: some View {
            TrafficLight(color: .black, opacity: 1)
        }
    }
}
