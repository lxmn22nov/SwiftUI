//
//  ExerciseListView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct ExerciseListView: View {
    @State var exercises = [
        "Abs",
        "Back",
        "Biceps",
        "Chest",
        "Legs",
        "Shoulders",
        "Triceps"
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(exercises, id: \.self) { exercise in
                    NavigationLink(exercise, value: exercise)
                }
                .onDelete { indices in
                    exercises.remove(atOffsets: indices)
                }
            }
        }
    }
}

#Preview {
    ExerciseListView()
}
