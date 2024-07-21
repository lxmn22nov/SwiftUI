//
//  LightDarkView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct SunMoonView: View {
    var lightMode: Bool
    
    var body: some View {
        HStack(spacing: 21) {
            Image(systemName: "sun.min")
                .imageScale(.large)
                .foregroundStyle(lightMode ? sunOrMoonSelectedColor : sunOrMoonNotSelectedColor)
            
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundColor(lightMode ? sunOrMoonNotSelectedColor : sunOrMoonSelectedColor)
        }
        .padding()
        .background(secondaryBackgroundColor)
        .cornerRadius(21)
    }
}

#Preview {
    VStack {
        SunMoonView(lightMode: true)
        SunMoonView(lightMode: false)
    }
}
