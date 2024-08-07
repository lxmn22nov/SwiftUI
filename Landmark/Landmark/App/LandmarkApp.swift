//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 22/06/2024.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
