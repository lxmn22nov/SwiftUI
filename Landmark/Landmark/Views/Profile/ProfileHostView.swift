//
//  ProfileHostView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 27/06/2024.
//

import SwiftUI

struct ProfileHostView: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    // Added cancel button to the profileHostView.
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            // Added a conditional view that displays either the static profile or the view for edit mode.
            if editMode?.wrappedValue == .inactive {
                // read the user's profile data from the environment to pass control of the data to the profile host.
                ProfileSummaryView(profile: modelData.profile)
            } else {
                // onAppear & onDisappear correct profile data & update the persistent profile when the user taps the done button.
                ProfileEditorView(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHostView()
        .environment(ModelData())
}
