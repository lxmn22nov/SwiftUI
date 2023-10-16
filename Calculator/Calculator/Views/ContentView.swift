//
//  ContentView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 16/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // LinearGradient: creates an image consisting of a progressive transition between two or more colors.
            LinearGradient(gradient: Gradient(colors: [.white.opacity(0.9), .black.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            KeyView()
        }
    }
}

#Preview {
    ContentView()
}
