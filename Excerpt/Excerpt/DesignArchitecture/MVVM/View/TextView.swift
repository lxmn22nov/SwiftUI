//
//  TextView.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI
import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

struct BigTextView: View {
    let text: String
    let widthProportion: CGFloat = 0.85
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .frame(width: screenWidth * widthProportion)
    }
}

struct NormalTextView: View {
    let text: String
    let widthProportion: CGFloat = 0.85
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .frame(width: screenWidth * widthProportion)
    }
}

struct BorderedBigTextView: View {
    let text: String
    let widthProportion: CGFloat = 0.85
    var lineWidth: CGFloat = 2
    var cornerRadius: CGFloat = 9
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .frame(width: screenWidth * widthProportion)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.white, lineWidth: lineWidth)
            )
    }
}

struct BorderedNormalTextView: View {
    let text: String
    let widthProportion: CGFloat = 0.85
    var lineWidth: CGFloat = 2
    var cornerRadius: CGFloat = 9
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
//            .frame(width: screenWidth * widthProportion)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.white, lineWidth: lineWidth)
            )
    }
}

#Preview {
    ZStack {
        Color
            .black
            .ignoresSafeArea()
        
        VStack {
            BigTextView(text: "Don't let the noise of others opinions drown out your inner voice.")
            NormalTextView(text: "Welcome to your daily dose of wisdom.")
            BorderedBigTextView(text: "Don't let the noise of others opinions drown out your inner voice.")
            BorderedNormalTextView(text: "Welcome to your daily dose of wisdom.")
        }
    }
    
}
