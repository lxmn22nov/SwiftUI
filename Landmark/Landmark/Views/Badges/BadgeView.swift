//
//  BadgeView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 25/06/2024.
//

import SwiftUI

struct BadgeView: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbolView(angle: .degrees(Double(index) / Double(8)) * 360.0)
        }
        .opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackgroundView()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    BadgeView()
}
