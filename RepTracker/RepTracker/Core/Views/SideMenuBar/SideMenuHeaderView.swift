//
//  SideMenuHeaderView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 3) {
                Text("User name unknown")
                    .font(.subheadline)
                    .fontDesign(.monospaced)
                Text("user@example.com")
                    .font(.footnote)
                    .fontDesign(.monospaced)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
