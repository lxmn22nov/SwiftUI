//
//  ComputationView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct ComputationView: View {
    let mainResult: String
    let currentComputation: String
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundStyle(foregroundDigitsColor)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundStyle(foregroundDigitsColor)
                    .lineLimit(1)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .minimumScaleFactor(0.1)
        }
        .padding(.horizontal)
    }
}

#Preview {
    VStack(spacing: 24) {
        ComputationView(mainResult: "33", currentComputation: "22 + 11")
        ComputationView(mainResult: "0.99", currentComputation: "99%")
        ComputationView(mainResult: "12936", currentComputation: "12 * 11")
    }
}
