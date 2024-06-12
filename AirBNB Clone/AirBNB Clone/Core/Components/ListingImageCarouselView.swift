//
//  ListingImageCarouselView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 08/06/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
//    var images = [
//    "listing-01",
//    "listing-02",
//    "listing-03",
//    "listing-04"
//    ]
    
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
