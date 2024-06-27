//
//  HikeBadgeView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 27/06/2024.
//

import SwiftUI

struct HikeBadgeView: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            BadgeView()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    HikeBadgeView(name: "Preview Testing")
}
