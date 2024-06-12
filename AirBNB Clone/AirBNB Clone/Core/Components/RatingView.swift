//
//  RatingView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 08/06/2024.
//

import SwiftUI

struct RatingView: View {
    
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: "star.fill")
            Text("4.5")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView()
}
