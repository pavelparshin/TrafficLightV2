//
//  TrafficLightSwitcherView.swift
//  TrafficLightV2
//
//  Created by Pavel Parshin on 20.07.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import SwiftUI

struct TrafficLightSwitcherView: View {
    @State private var textButton = "Start"
    @State private var currentColor: UIColor = .gray
    
    var body: some View {
        VStack {
            TrafficLight(currentLight: currentColor)
            
            Spacer()
            
            Button(action:  { self.buttonPressed() }) {
                Text(textButton)
                    .font(.title)
            }
        }
        .padding()
    }
    
    private func buttonPressed() {
        textButton = "Next"
        
        switch currentColor {
        case .red: currentColor = .yellow
        case .yellow: currentColor = .green
        default: currentColor = .red
        }
    }
}

struct TrafficLightSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightSwitcherView()
    }
}
