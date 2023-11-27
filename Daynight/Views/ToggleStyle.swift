//
//  ToggleStyle.swift
//  Daynight
//
//  Created by Mushfiq Humayoon on 22/11/23.
//

import SwiftUI

struct DarkToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            configuration.label
                .padding(30)
                .contentShape(Circle())
        }
        .background(
            NMBackground(isHighlighted: configuration.isOn, shape: Circle())
        )
    }
}
