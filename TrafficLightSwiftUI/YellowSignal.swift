//
//  RedSignal.swift
//  TrafficLightSwiftUI
//
//  Created by Armen on 18.07.2023.
//

import SwiftUI

struct RedSignal: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
            .opacity(1)
            
        Spacer()
    }
}

struct RedSignal_Previews: PreviewProvider {
    static var previews: some View {
        RedSignal(color: .red)
    }
}
