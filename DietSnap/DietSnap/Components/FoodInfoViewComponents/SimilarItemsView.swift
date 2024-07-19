//
//  SimilarItemsView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct SimilarItemsView: View {
    let shade = [
        Color.gray,
        Color.gray,
        Color.gray
    ]
    
    var body: some View {
        VStack {
            // Section 01.
            HStack {
                Text("Similar Items")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            .frame(width: 399, alignment: .leading)
            
            // Section 02.
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 11) {
                    ForEach(shade.indices, id: \.self) { index in
                        SimilarItemCardView(color: shade[index])
                    }
                }
                .padding(.leading, 27)
            }
        }
    }
}

struct SimilarItemCardView: View {
    let color: Color
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 21)
                .fill(color)
            VStack {
                // add content.
            }
            .foregroundStyle(.white)
        }
        .frame(width: 220, height: 150)
    }
}
#Preview {
    SimilarItemsView()
}
