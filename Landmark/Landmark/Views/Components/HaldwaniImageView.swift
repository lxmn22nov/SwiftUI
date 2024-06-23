//
//  HaldwaniImageView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 22/06/2024.
//

import SwiftUI

struct HaldwaniImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 6)
    }
}

#Preview {
    HaldwaniImageView(image: Image("Haldwani"))
}
