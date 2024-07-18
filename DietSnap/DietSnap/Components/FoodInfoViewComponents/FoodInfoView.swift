//
//  FoodInfoView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct FoodInfoView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(.chicken)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
            }
            .frame(height: 900, alignment: .top)
            VStack(alignment: .leading) {
                Text("Food Information")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("Fried Chicken")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundStyle(Color.white)
            .frame(width: 400, height: 400, alignment: .topLeading)
            
            GlassCardView()
        }
    }
}

#Preview {
    FoodInfoView()
}
