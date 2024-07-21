//
//  WelcomeQuote.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct WelcomeQuote: View {
    let fireOrange = Color(
        red: 254 / 255,
        green: 252 / 255,
        blue: 50 / 255
    )
    let welcomeQuote = "Don't let the noise of others opinions drown out your inner voice."
    let welcomeAuthor = "- Steve Jobs"
    
    var body: some View {
        VStack(spacing: 12) {
            Text(welcomeQuote)
                .font(.system(size: 21, weight: .bold, design: .serif))
                .foregroundStyle(.white)
            HStack {
                Spacer()
                
                Image(.appleLogo)
                    .resizable()
                    .frame(width: 250, height: 50)
                    .mask {
                        Text(welcomeAuthor)
                    }
            }
        }
    }
}

#Preview {
    ZStack {
        Color
            .black
            .ignoresSafeArea()
        WelcomeQuote()
    }
}
