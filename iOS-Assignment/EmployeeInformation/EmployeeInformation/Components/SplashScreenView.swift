//
//  SplashScreen.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var size = 0.7
    @State private var opacity = 0.4
        
    var body: some View {
        VStack {
            Image(.empIcon)
                .resizable()
                .scaledToFit()
                .clipShape(Capsule())
                .frame(width: 110, height: 110, alignment: .top)
            
        }
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear{
            withAnimation(.easeIn(duration: 0.9)){
                self.size = 1.0
                self.opacity = 1.0
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    SplashScreenView()
}
