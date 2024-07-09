//
//  WelcomeTitleView.swift
//  ChatWithGemini
//
//  Created by Laxman Singh Koranga on 09/07/2024.
//

import SwiftUI

struct WelcomeTitleView: View {
    var body: some View {
        Text("Welcome to Gemini AI")
            .font(.largeTitle)
            .fontDesign(.serif)
            .foregroundStyle(.indigo)
            .padding(.top, 39)
    }
}

#Preview {
    WelcomeTitleView()
}
