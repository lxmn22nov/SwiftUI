//
//  RotatedBadgeSymbolView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 25/06/2024.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbolView()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
        
    }
}

#Preview {
    RotatedBadgeSymbolView(angle: Angle(degrees: 5))
}
