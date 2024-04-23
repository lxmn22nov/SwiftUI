//
//  SpotifyRecentCell.swift
//  SpotifyUI
//
//  Created by Laxman Singh Koranga on 23/04/2024.
//

import SwiftUI

struct SpotifyRecentCell: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "Some random title."
    
    var body: some View {
        HStack(spacing: 15) {
            ImageLoaderView()
                .frame(width: 55, height: 55)
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .padding(.trailing, 9)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)
    }
}

#Preview {
    
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack {
            HStack {
                SpotifyRecentCell()
                SpotifyRecentCell()
            }
            HStack {
                SpotifyRecentCell()
                SpotifyRecentCell()
            }
        }
    }
}
