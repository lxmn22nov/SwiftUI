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
    
            TextField("Ask anything...", text: $userPrompt, axis: .vertical)
                .lineLimit(5)
                .font(.title3)
                .fontDesign(.serif)
                .padding()
                .background(Color.indigo.opacity(0.2), in: RoundedRectangle(cornerRadius: 24))
                .autocorrectionDisabled(true)
                .onSubmit {
                    generateResponse()
                }
        }
        .padding()
    }
    
    func generateResponse() {
        isLoading = true
        response = ""
        
        Task {
            do {
                let result = try await model.generateContent(userPrompt)
                isLoading = false
                response = LocalizedStringKey(result.text ?? "No response found")
                userPrompt = ""
            } catch {
                response = "Something went wrong\n\(error.localizedDescription)"
            }
        }
    }
}

#Preview {
    ContentView()
}
