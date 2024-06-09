//
//  ExploreView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 08/06/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        // NavigationStack used to jumps to next screen.
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                // ScrollView helps the rectangle frames to scroll over the screen.
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    // LazyStack helps items to grow according to the need.
                    LazyVStack(spacing: 33) {
                        ForEach(0...4, id: \.self) { listing in
    //                        Rectangle()
                            // NavigationLink will help user to navigate through ExploreView to Detail of ListingItemView.
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 9))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
