//
//  User_LoginApp.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import SwiftUI
import Firebase

@main
struct User_LoginApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
