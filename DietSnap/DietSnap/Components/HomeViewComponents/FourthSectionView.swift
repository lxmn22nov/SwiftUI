//
//  FourthSectionView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

// Explore View.
import SwiftUI

struct FourthSectionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Explore")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            .frame(width: 380, alignment: .leading)
            .padding(.bottom, 27)
            
            HStack(spacing: 9) {
                Image(.explore1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 120, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Find Diets")
                        .font(.title2)
                    Text("Find premade diets according to your cuisine")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            .frame(width: 395, height: 120)
            .background(
                RoundedRectangle(cornerRadius: 21)
                    .fill(Color.white)
            )
            
            HStack(spacing: 15) {
                Image(.explore2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 100)
                
                VStack(alignment: .leading) {
                    Text("Find Nutritionist")
                        .font(.title2)
                    Text("Get customized diets to achieve your health goal")
                        .lineLimit(2)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                Spacer()
            }
            .frame(width: 390, height: 120)
            .background(
                RoundedRectangle(cornerRadius: 21)
                    .fill(Color.white)
            )
        }
        .frame(width: 390, height: 310)
        .padding()
    }
}

#Preview {
    FourthSectionView()
}

