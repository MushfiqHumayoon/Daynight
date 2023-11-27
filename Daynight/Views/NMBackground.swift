//
//  NMBackground.swift
//  Daynight
//
//  Created by Mushfiq Humayoon on 22/11/23.
//

import SwiftUI

struct NMBackground<NMShape: Shape>: View {
    var isHighlighted: Bool
    var shape: NMShape
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(colorScheme != .dark ? LinearGradient(Color.darkEnd, Color.darkStart) : LinearGradient(Color.lightEnd, Color.lightStart))
            } else {
                shape
                    .fill(colorScheme != .dark ? LinearGradient(Color.darkStart, Color.darkEnd) : LinearGradient(Color.lightEnd, Color.lightStart))
                    .shadow(color: colorScheme != .dark ? Color.darkStart : Color.lightEnd,
                            radius: 10, x: -10, y: -10)
                    .shadow(color: colorScheme != .dark ? Color.darkEnd : Color.white,
                            radius: 10, x: 10, y: 10)
            }
        }
    }
}

#Preview {
    NMBackground(isHighlighted: true, shape: .circle)
}
