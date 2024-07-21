//
//  WelcomeView.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color
                .black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 350)
                
                WelcomeQuote()
                
                Spacer()
                
                Text("Welcome to your daily dose of wisdom.")
                    .font(.system(size: 18, weight: .semibold, design: .serif))
                    .foregroundStyle(.white)
                    .padding(.bottom, 100)
                
                Button(action: {
                    
                }, label: {
                    GoToNextView(text: "Generate Quote")
                })
                
                Spacer()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
