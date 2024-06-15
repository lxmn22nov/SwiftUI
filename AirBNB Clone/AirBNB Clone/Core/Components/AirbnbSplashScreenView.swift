//
//  AirbnbSplashScreenView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 14/06/2024.
//

import SwiftUI

struct AirbnbSplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.3
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image(.airbnbLogo)
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .top)
                    .scaledToFit()
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 0.9)) {
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    AirbnbSplashScreenView()
}
