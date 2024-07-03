//
//  ContentView.swift
//  ThemeSwitcher
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var changeTheme: Bool = false
    @Environment(\.colorScheme) private var scheme
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    
    var body: some View {
        NavigationStack {
            List {
                Section("Appearance") {
                    Button("Change Theme") {
                        changeTheme.toggle()
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .preferredColorScheme(userTheme.colorScheme)
        .sheet(isPresented: $changeTheme, content: {
            ThemeChangeView(scheme: scheme)
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
    }
}

#Preview {
    ContentView()
}
