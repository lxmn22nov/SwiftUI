//
//  SideMenuBarView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct SideMenuBarView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    // Add Home View.
                    Text("Home")
                        .tag(0)
                    // Add profile view.
                    Text("Profile")
                        .tag(1)
                    // Add settings view.
                    Text("Settings")
                        .tag(2)
                    // Add Analysis view.
                    Text("Analysis")
                        .tag(3)
                    // Add body tracker view.
                    Text("Body Tracker")
                        .tag(4)
                }
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("RepTracker")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
    }
}

#Preview {
    SideMenuBarView()
}
