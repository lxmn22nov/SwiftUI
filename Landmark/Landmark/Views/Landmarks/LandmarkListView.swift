//
//  LandmarkListView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

// Created the list of landmarks.
import SwiftUI

struct LandmarkListView: View {
    // The modelData property gets its value automatically, as long as the environment(_:) modifier has been applied to a parent.
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        // List work with identifiable data. We can make your data identifiable in one of two ways: by passing along with our data a key path to a property that uniquely identifies each element or by making our data type conform to the "Identifiable" protocol.
        NavigationSplitView {
            List {
//                LandmarkRowView(landmark: landmarks[0])
//                LandmarkRowView(landmark: landmarks[1])
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkListView()
        .environment(ModelData())
}
