//
//  ActivityView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // Section 01.
            HeaderView()
            // Section 02: MidSectionView embeded to HorizontalTabView.
            HorizontalTabView()
            // Section 03.
            ThirdSectionView(progress: 0.73)
            // Section 04.
            FourthSectionView()
        }
    }
}

#Preview {
    ActivityView()
}
