//
//  StartButton.swift
//  TrafficLightSwiftUI
//
//  Created by Armen on 18.07.2023.
//

import SwiftUI

struct StartButton: View {
    var body: some View {
        Button(action: buttonPressed) {
            Text("Start")
                .font(.title)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)

        }
        .padding(100)
    }
    
    private func buttonPressed() {
        
    }
    
    struct StartButton_Previews: PreviewProvider {
        static var previews: some View {
            StartButton()
        }
    }
}
