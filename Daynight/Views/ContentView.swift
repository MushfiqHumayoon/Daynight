//
//  ContentView.swift
//  Daynight
//
//  Created by Mushfiq Humayoon on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    var body: some View {
        ZStack {
            isDarkMode ? LinearGradient(Color.lightStart, Color.lightEnd) : LinearGradient(Color.darkStart, Color.darkEnd)

            VStack(spacing: 40) {
                Button(action: {
                    toggleMode()
                }) {
                    Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(isDarkMode ? .gray : .black)
                }
                .buttonStyle(NMButtonStyle())
            }
        }
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
        .edgesIgnoringSafeArea(.all)
    }
    func toggleMode() {
        isDarkMode.toggle()
    }
}

#Preview {
    ContentView()
}
