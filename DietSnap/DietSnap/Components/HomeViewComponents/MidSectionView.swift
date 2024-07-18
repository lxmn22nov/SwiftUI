//
//  MidSectionView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct MidSectionView: View {
    let currentDate = Date()
    
    var body: some View {
        // First Section.
        VStack {
            VStack {
                Text("Today")
                    .font(.title)
                    .fontWeight(.semibold)
                Text(currentDate.formatted(date: .complete, time: .omitted))
                    .font(.title2)
                .foregroundStyle(.gray)
            }
            .padding(.bottom, 24)
            
            // Second Section.
            ZStack {
                Circle()
                    .stroke(lineWidth: 13)
                    .foregroundStyle(Color.bigestCircle)
                    .frame(width: 320, height: 280)
                Circle()
                    .stroke(lineWidth: 13)
                    .foregroundStyle(Color.bigCircle)
                    .frame(width: 215, height: 230)
                Button(action: {
                    // add action.
                }, label: {
                    Text("SET GOAL!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                })
                Circle()
                    .foregroundStyle(Color.smallCircle1)
                    .frame(width: 15, height: 295, alignment: .top)
                Circle()
                    .foregroundStyle(Color.smallCircle2)
                    .frame(width: 15, height: 230, alignment: .top)
            }
            
            // Third Section.
            HStack(spacing: 9) {
                Image(.apple)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .leading)
                Text("Diet Pts")
                    .font(.title2)
                
                Spacer()
                
                Image(.dumbell)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 45, alignment: .leading)
                Text("Exercise Pts")
                    .font(.title2)
            }
            .frame(width: 334)
            
            // Fourth Section.
            HStack {
                VStack {
                    Text("1500")
                        .font(.title2)
                        .foregroundStyle(Color.bigestCircle)
                    Text("Cal")
                        .font(.title3)
                }
                
                Spacer()
                
                VStack {
                    Text("3/5")
                        .font(.title2)
                        .foregroundStyle(Color.bigestCircle)
                    Text("Days")
                        .font(.title3)
                }
                
                Spacer()
                
                VStack {
                    Text("88")
                        .font(.title2)
                        .foregroundStyle(Color.bigestCircle)
                    Text("Health Score")
                        .font(.title3)
                }
            }
            .frame(width: 330)
        }
        .frame(width: 400, height: 530)
    }
}

#Preview {
    MidSectionView()
}
