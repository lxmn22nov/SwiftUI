//
//  MainView.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import SwiftUI

struct MainView: View {
    @State private var isSplashScreenActive = true
    
    var body: some View {
        Group {
            if isSplashScreenActive {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                isSplashScreenActive = false
                            }
                        }
                    }
            } else {
                EmployeeListView()
            }
        }
        .transition(.opacity)
    }
}

#Preview {
    MainView()
}
