//
//  FactsView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct FactsView: View {
    let colors = [
        Color.orange,
        Color.blue,
        Color.green
    ]
    
    var body: some View {
        VStack {
            // Section 01.
            HStack {
                Text("Facts")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            .frame(width: 399, alignment: .leading)
            
            // Section 02.
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 11) {
                    ForEach(colors.indices, id: \.self) { index in
                        FactCardView(color: colors[index])
                    }
                }
                .padding(.leading, 27)
            }
        }
    }
}

struct FactCardView: View {
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
        .frame(width: 380, height: 210)
    }
}

#Preview {
    Group {
        FactsView()
        FactCardView(color: .blue)
    }
}
