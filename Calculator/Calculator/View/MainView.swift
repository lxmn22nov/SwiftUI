//
//  MainView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct MainView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor
                .ignoresSafeArea()
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                
                Spacer()
                
                ComputationView(mainResult: mainResult, currentComputation: currentComputation)
                
                Spacer()
                
                CalculatorButtonView(currentComputation: $currentComputation, mainResult: $mainResult)
            }
            .environment(\.colorScheme, lightMode ? .light : .dark)
        }
    }
}

#Preview {
    MainView(currentComputation: "12 * 5", mainResult: "60")
}
