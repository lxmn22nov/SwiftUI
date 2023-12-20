//
//  TabScreenView.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            HomeScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            HomeScreen()
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            HomeScreen()
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            HomeScreen()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

#Preview {
    TabScreenView()
}
