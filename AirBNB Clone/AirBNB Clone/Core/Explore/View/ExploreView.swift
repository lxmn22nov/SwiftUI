//
//  ExploreView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 08/06/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        // NavigationStack used to jumps to next screen.
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
                // ScrollView helps the rectangle frames to scroll over the screen.
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    // LazyStack helps items to grow according to the need.
                    LazyVStack(spacing: 33) {
//                        ForEach(0...4, id: \.self) { listing in
                        ForEach(viewModel.listings) { listing in
    //                        Rectangle()
                            // NavigationLink will help user to navigate through ExploreView to Detail of ListingItemView.
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 9))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
