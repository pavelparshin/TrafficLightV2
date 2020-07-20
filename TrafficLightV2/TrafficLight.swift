//
//  TrafficLight.swift
//  TrafficLightV2
//
//  Created by Pavel Parshin on 20.07.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import SwiftUI

struct TrafficLight: View {
    var currentLight: UIColor
    
    @State private var redAlpha: CGFloat = 0.3
    @State private var yellowAlpha: CGFloat  = 0.3
    @State private var greenAlpha: CGFloat  = 0.3
    
    var body: some View {
        ZStack {
            TrafficLightBody()
            VStack {
                ColorLight(color: .red, alpha: redAlpha)
                ColorLight(color: .yellow, alpha: yellowAlpha)
                ColorLight(color: .green, alpha: greenAlpha)
            }
        }
    }
    
//    private func setColorAlpha() {
//        defaultColor()
//        switch currentLight {
//        case .red: redAlpha = 1
//        case .yellow: yellowAlpha = 1
//        case .green: greenAlpha = 1
//        default:
//            return
//        }
//        print(redAlpha)
//    }
//
//    private func defaultColor() {
//        redAlpha = 0.3
//        yellowAlpha = 0.3
//        greenAlpha = 0.3
//    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight(currentLight: .red)
    }
}
