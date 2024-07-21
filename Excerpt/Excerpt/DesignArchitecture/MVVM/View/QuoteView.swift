//
//  ContentView.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct QuoteView: View {
    @State private var quote: String = "Temporary Quote"
    @StateObject var quoteViewModel: QuoteViewModel = QuoteViewModel()
    
    var body: some View {
        ZStack {
            Color
                .black
                .ignoresSafeArea()
            
            VStack {
                BigTextView(text: "Quote of the Day")
                
                Spacer()
                BigTextView(text: quote)
                Spacer()
                BorderedNormalTextView(text: "Tap for Quote")
                    .onTapGesture {
//                        quote = "Ancient Rule of Twenty-one: if you do anything for twenty-one days in a row, it will be installed as a habit."
                        quoteViewModel.getRandomQuote()
                    }
            }
            .padding()
        }
    }
}

#Preview {
    QuoteView()
}
