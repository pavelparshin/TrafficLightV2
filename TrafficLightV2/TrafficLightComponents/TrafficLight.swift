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
    
    private var redAlpha: CGFloat {
        return currentLight == .red ? 1 : 0.3
    }
    
    private var yellowAlpha: CGFloat {
        return currentLight == .yellow ? 1 : 0.3
    }
    
    private var greenAlpha: CGFloat  {
        return currentLight == .green ? 1 : 0.3
    }
    
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
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight(currentLight: .red)
    }
}
