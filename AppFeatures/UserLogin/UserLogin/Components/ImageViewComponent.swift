//
//  ImageViewComponent.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
//

import SwiftUI

struct ImageViewComponent: View {
    var body: some View {
        // Image.
        Image(.airbnbLogo)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 120)
            .padding(.vertical, 32)
    }
}

#Preview {
    ImageViewComponent()
}
