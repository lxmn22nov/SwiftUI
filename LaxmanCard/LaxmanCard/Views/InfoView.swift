//
//  InfoView.swift
//  LaxmanCard
//
//  Created by Laxman Singh Koranga on 21/01/2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                })
            .padding()
    }
}

#Preview {
    InfoView(text: "Hello, XCode", imageName: "hand.wave.fill")
}
