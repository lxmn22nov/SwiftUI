//
//  FavoriteButtonView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

import SwiftUI

struct FavoriteButtonView: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButtonView(isSet: .constant(true))
}
