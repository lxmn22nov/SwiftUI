//
//  CategoryItemView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 27/06/2024.
//

import SwiftUI

struct CategoryItemView: View {
    var landmark: Landmarks
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItemView(landmark: ModelData().landmarks[0])
}
