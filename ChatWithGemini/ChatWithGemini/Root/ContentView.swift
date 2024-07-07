//
//  ContentView.swift
//  ChatWithGemini
//
//  Created by Laxman Singh Koranga on 05/07/2024.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    let model = GenerativeModel(name: "gemini-1.5-pro", apiKey: APIKey.default)
    @State var userPrompt = ""
    @State var response: LocalizedStringKey = "How can I help you today?"
    @State var isLoading = false
    
    var body: some View {
        VStack {
            Text("Welcome to Gemini AI")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .foregroundStyle(.indigo)
                .padding(.top, 40)
            
            ZStack {
                ScrollView {
                    Text(response)
                        .font(.title2)
                        .fontDesign(.serif)
                }
                
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .indigo))
                        .scaleEffect(2)
                }
            }
            
            TextField("Enter a prompt here", text: $userPrompt, axis: .vertical)
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
    
    // creating generate response function.
    func generateResponse() {
        isLoading = true
        response = ""
        
        // performing asynchronous task.
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
