//
//  SpotifyCategoryCell.swift
//  SpotifyUI
//
//  Created by Laxman Singh Koranga on 14/04/2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 36)
            .padding(.vertical, 9)
            .padding(.horizontal,9)
            .themeColors(isSelected: isSelected)
//            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
//            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(18)
    }
}

extension View {
    func themeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .spotifyGreen: .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        
        VStack(spacing: 39) {
            SpotifyCategoryCell(title: "Title goes here.")
            SpotifyCategoryCell(title: "Title goes here.", isSelected: true)
            SpotifyCategoryCell(isSelected: true)
        }
    }
}
