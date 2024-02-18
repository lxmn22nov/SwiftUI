//
//  Todo_AppApp.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 14/02/2024.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    // State Management.
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NoListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
