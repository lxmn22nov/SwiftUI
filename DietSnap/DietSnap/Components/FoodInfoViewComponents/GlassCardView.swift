//
//  GlassCardView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct GlassCardView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 21)
                    .fill(Color.glass)
        
                VStack {
                    Text("71")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    Text("out of 100")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top)
                }
            }
            .frame(width: 124, height: 132)
        }
        .frame(width: 370, height: 550, alignment: .topTrailing)
    }
}

#Preview {
    GlassCardView()
}
