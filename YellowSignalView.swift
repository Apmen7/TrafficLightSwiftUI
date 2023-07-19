//
//  YellowSignal.swift
//  TrafficLightSwiftUI
//
//  Created by Armen on 18.07.2023.
//

import SwiftUI

struct YellowSignal: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct YellowSignal_Previews: PreviewProvider {
    static var previews: some View {
        YellowSignal(color: .yellow)
    }
}
