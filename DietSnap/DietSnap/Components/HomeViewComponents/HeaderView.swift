//
//  HeaderView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            HStack {
                Text("Dietsnap")
                    .foregroundStyle(.yellow)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
//            .padding()
            .frame(alignment: .leading)
            
            Spacer()
            
            HStack(spacing: 15) {
                Button(action: {
                    // add view.
                }, label: {
                    Image(systemName: "bell")
                        .font(.title)
                })
                .foregroundStyle(.black)
                
                Button(action: {
                    // add view.
                }, label: {
                    Image(systemName: "medal")
                        .font(.title)
                })
                .foregroundStyle(.black)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "text.bubble")
                        .font(.title)
                })
                .foregroundStyle(.black)
            }
//            .padding(.horizontal)
            .frame(alignment: .trailing)
        }
        .frame(width: 421, height: 67)
        .background(Rectangle().fill(Color.white).shadow(color: Color.gray.opacity(0.3), radius: 3, x: 0, y: 1))
        
    }
}

#Preview {
    HeaderView()
}
