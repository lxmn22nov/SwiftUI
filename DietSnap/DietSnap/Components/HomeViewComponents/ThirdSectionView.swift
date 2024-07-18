//
//  ThirdSectionView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct ThirdSectionView: View {
    let progress: Double
    
    var body: some View {
        VStack {
            HStack {
                Text("Your Goals")
                    .font(.title2)
                    .fontWeight(.semibold)
                
//                Spacer()
            }
            .frame(width: 375, alignment: .leading)
            
            Spacer()
            
            HStack {
                Image(.bodyBuilder)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 70)
                
                VStack(alignment: .leading) {
                    Text("Keto Weight loss plan")
                        .font(.title3)
                    Text("Current Major Goal")
                        .font(.title3)
                    .foregroundStyle(.gray)
                    
                    Spacer()
                    
                }
                .frame(height: 70)
                
                Spacer()
                
                ZStack {
                    // Set the boundary color to orange
                    Circle()
                        .stroke(lineWidth: 7)
                        .foregroundColor(.orange)
                    
                    // This creates the white incomplete arc
                    Circle()
                        .trim(from: progress, to: 100)
                        .stroke(lineWidth: 7)
                        .foregroundColor(.white)
                    
                    // Display the percentage text.
                    Text("\(Int(progress * 100))%")
                        .font(.subheadline)
                }
                .frame(width: 50, height: 65)
                .padding(.horizontal, 10)

            }
            .frame(width: 390, height: 90)
            .background(
                RoundedRectangle(cornerRadius: 21)
                    .fill(Color.mercury)
            )
        }
        .frame(width: 400, height: 160)
        .padding()
    }
}

#Preview {
    ThirdSectionView(progress: 0.73)
}
