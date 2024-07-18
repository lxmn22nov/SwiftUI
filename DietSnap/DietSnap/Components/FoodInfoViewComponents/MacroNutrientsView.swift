//
//  MacroNutrientsView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import SwiftUI

struct MacroNutrientsView: View {
    var body: some View {
        HStack {
            Text("Macro Nutrients")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 410, alignment: .leading)
    }
}

#Preview {
    MacroNutrientsView()
}
