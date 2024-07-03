//
//  TrackView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct TrackView: View {
    @State private var value: Double = 0.0
    @State private var rep: Int = 0
    var body: some View {
        Section {
            Stepper("WEIGHT(Kgs)", value: $value, in: 0...99, step: 2.5)
                .padding()
                .font(.headline)
                .fontDesign(.monospaced)
        }

        Section {
            Stepper("REPETITION", value: $rep, in: 0...99, step: 1)
                .padding()
                .font(.headline)
                .fontDesign(.monospaced)
        }
    }
}

#Preview {
    TrackView()
}
