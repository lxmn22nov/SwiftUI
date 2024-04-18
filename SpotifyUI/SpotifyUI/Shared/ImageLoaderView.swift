//
//  ImageLoaderView.swift
//  SpotifyUI
//
//  Created by Laxman Singh Koranga on 14/04/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.00)
            .overlay(
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
            )
        
    }
}

#Preview {
    ImageLoaderView()
//    Rectangle()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
