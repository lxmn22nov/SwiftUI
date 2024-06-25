//
//  GraphCapsuleView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 25/06/2024.
//

import SwiftUI

struct GraphCapsuleView: View, Equatable {
    var index: Int
    var color: Color
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>
    
    var heightRatio: CGFloat {
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }
    var offsetRatio: CGFloat {
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }
    
    var body: some View {
        Capsule()
            .fill(color)
            .frame(height: height * heightRatio)
            .offset(x: 0, y: height * -offsetRatio)
    }
}

#Preview {
    GraphCapsuleView(
        index:0,
        color: .blue,
        height: 150, 
        range: 10..<50,
        overallRange: 0..<100
    )
}
