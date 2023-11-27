//
//  NMButtonStyle.swift
//  Daynight
//
//  Created by Mushfiq Humayoon on 22/11/23.
//

import SwiftUI

struct NMButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(NMBackground(isHighlighted: configuration.isPressed, shape: Circle()))
    }
}
