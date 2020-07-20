//
//  ColorLight.swift
//  TrafficLightV2
//
//  Created by Pavel Parshin on 20.07.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import SwiftUI

struct ColorLight: View {
    var color: UIColor
    var alpha: CGFloat
    
    var body: some View {
        Color(color.withAlphaComponent(alpha))
//        Color(color)
            .frame(width: 125, height: 125)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, alpha: 0.3)
    }
}
