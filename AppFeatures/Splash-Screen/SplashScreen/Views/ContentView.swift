//
//  ContentView.swift
//  SplashScreen
//
//  Created by Laxman Singh Koranga on 18/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Welcome to Workspace.exe!")
                .foregroundColor(.white)
                .font(.system(size: 24))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
