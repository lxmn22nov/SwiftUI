//
//  RepetitionTrackView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct RepetitionTrackView: View {
    @State private var selectedTab = 0
    
    var body: some View {
//        TabView {
//            TrackView()
//                .tabItem { Label("TRACK", systemImage: "scalemass") }
//
//            HistoryView()
//                .tabItem { Label("HISTORY", systemImage: "clock") }
//            
//            GraphView()
//                .tabItem { Label("GRAPH", systemImage: "chart.xyaxis.line")}
//        }
        
        VStack {
            // Custom TabBar.
            HStack {
                Button(action: {
                    selectedTab = 0
                }) {
                    HStack {
                        Image(systemName: "scalemass")
                        Text("TRACK")
                            .font(.subheadline)
                            .fontDesign(.monospaced)
                    }
                }
                .padding()
                .foregroundStyle(selectedTab == 0 ? .blue : .gray)
                
                Spacer()
                
                Button(action: {
                    selectedTab = 1
                }) {
                    HStack {
                        Image(systemName: "clock")
                        Text("HISTORY")
                            .font(.subheadline)
                            .fontDesign(.monospaced)
                    }
                }
                .padding()
                .foregroundStyle(selectedTab == 1 ? .blue : .gray)
                
                Spacer()
                
                Button(action: {
                    selectedTab = 2
                }) {
                    HStack {
                        Image(systemName: "chart.xyaxis.line")
                        Text("GRAPH")
                            .font(.subheadline)
                            .fontDesign(.monospaced)
                    }
                }
                .padding()
                .foregroundStyle(selectedTab == 2 ? .blue : .gray)
            }
//            .background(Color(UIColor.systemBackground).shadow(radius: 2))

            // Tab Views
            if selectedTab == 0 {
                TrackView()
            } else if selectedTab == 1 {
                HistoryView()
            } else if selectedTab == 2 {
                GraphView()
            }
            
            Spacer()
        }
    }
}

#Preview {
    RepetitionTrackView()
}
