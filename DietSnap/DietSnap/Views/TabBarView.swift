//
//  TabBarView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ActivityView()
                .tabItem { Label("Activity", systemImage: "note") }
            GoalsView()
                .tabItem { Label("Goals", systemImage: "chart.bar.xaxis") }
            CameraView()
                .tabItem { Label("Camera", systemImage: "camera") }
            FeedView()
                .tabItem { Label("Feed", systemImage: "note.text") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    TabBarView()
}
