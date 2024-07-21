//
//  GoToView.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct GoToNextView: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 18, weight: .medium, design: .serif))
            Image(systemName: "arrowtriangle.right")
        }
        .foregroundStyle(.black)
        .background(RoundedRectangle(cornerRadius: 15).fill(Color.white).frame(width: 200, height: 40))
    }
}

#Preview {
    GoToNextView(text: "Generate Quote")
}
