//
//  LandmarkListView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

// Created the list of landmarks.
import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        // List work with identifiable data. We can make your data identifiable in one of two ways: by passing along with our data a key path to a property that uniquely identifies each element or by making our data type conform to the "Identifiable" protocol.
        NavigationSplitView {
            List(landmarks) { landmark in
//                LandmarkRowView(landmark: landmarks[0])
//                LandmarkRowView(landmark: landmarks[1])
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkListView()
}
