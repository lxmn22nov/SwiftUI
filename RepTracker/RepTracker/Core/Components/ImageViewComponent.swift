//
//  ImageViewComponent.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct ImageViewComponent: View {
    var body: some View {
        // Logo.
        Image(.activityTrackerLogo)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
    }
}

#Preview {
    ImageViewComponent()
}
