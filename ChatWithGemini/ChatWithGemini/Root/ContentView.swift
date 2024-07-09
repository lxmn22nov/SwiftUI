//
//  ContentView.swift
//  ChatWithGemini
//
//  Created by Laxman Singh Koranga on 09/07/2024.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)
    
    @State var userPrompt: String = ""
    @State var response: LocalizedStringKey = "How can I help you today?"
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            WelcomeTitleView()
            
            ZStack {
                ScrollView {
                    Text(response)
                        .font(.title)
                        .fontDesign(.serif)
                    
                }
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .indigo))
                        .scaleEffect(2)
                }
            }
    
            PromptFieldView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
