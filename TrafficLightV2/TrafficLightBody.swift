//
//  TrafficLightBody.swift
//  TrafficLightV2
//
//  Created by Pavel Parshin on 20.07.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import SwiftUI

struct TrafficLightBody: View {
    var body: some View {
        Color(.black)
            .frame(width: 220, height: 500)
            .overlay(Rectangle().stroke(Color.gray, lineWidth: 10))
    }
}

struct TrafficLightBody_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightBody()
    }
}
