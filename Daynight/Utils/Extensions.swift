//
//  Extensions.swift
//  Daynight
//
//  Created by Mushfiq Humayoon on 22/11/23.
//

import SwiftUI

extension Color {
    static let lightStart = Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255)
    static let lightEnd = Color(red: 215 / 255, green: 215 / 255, blue: 225 / 255)
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
