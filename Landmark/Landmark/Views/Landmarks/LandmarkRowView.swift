//
//  LandmarkRowView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

import SwiftUI

struct LandmarkRowView: View {
    // stored property.
    var landmark: Landmarks
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    // The code written in the preview only changes what XCode displays in the canvas.
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])
    }
}
