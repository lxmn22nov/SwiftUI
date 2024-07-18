//
//  DescriptionView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Description")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .frame(width: 410, alignment: .leading)
            HStack {
                Text("Fried chicken is a dish consiting of chicken pieces usually from broiler chickens which has been floured or battered and then pan-fried, deep fried, or pressure fried.")
                    .font(.title3)
            }
        }
    }
}

#Preview {
    DescriptionView()
}
