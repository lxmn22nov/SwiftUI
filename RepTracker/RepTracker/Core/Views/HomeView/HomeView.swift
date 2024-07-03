//
//  HomeView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Spacer()
            
            VStack {
                Text("Workout log Empty.")
                    .fontDesign(.monospaced)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            // Navigation Button.
            NavigationLink {
                ExerciseListView()
//                    .navigationBarBackButtonHidden(true)
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 31, height: 30)
            }
            HStack {
                Text("Start New Workout")
                    .fontDesign(.monospaced)
                    .fontWeight(.regular)
            }
            .navigationTitle("RepTracker")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
