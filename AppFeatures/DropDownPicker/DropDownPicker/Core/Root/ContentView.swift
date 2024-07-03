//
//  ContentView.swift
//  DropDownPicker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    /// View properties.
    @State private var selection: String?
    @State private var selection1: String?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                DropDownView(
                    hint: "Select",
                    options: [
                        "YouTube",
                        "Instagram",
                        "X(Twitter)",
                        "Snapchat",
                        "Tiktok"
                    ],
                    anchor: .bottom,
                    selection: $selection)
                
                DropDownView(
                    hint: "Select",
                    options: [
                        "Cricket",
                        "Football",
                        "Basket-Ball",
                        "Boxing",
                        "Mix-Martial Arts"
                    ],
                    anchor: .top,
                    selection: $selection1)
            }
            .navigationTitle("Dropdown Picker")
        }
    }
}

#Preview {
    ContentView()
}
