//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Laxman Singh Koranga on 18/10/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        }
        else {
            VStack {
                Image("code")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .top)
                    .scaledToFit()
                Text("Workspace.exe")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .opacity(0.9)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 0.9)){
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}
#Preview {
    SplashScreenView()
}
