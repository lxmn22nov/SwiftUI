//
//  SearchBarView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct SearchBarView: View {
    @State var state = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 29)
                .foregroundStyle(.gray)
            
            TextField("Search", text: $state)
                .frame(width: 300, height: 36)
                .fontDesign(.monospaced)
                .foregroundStyle(.black)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(12)
                
        }
        .padding()
        
    }
}

#Preview {
    SearchBarView()
}
