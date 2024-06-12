//
//  ListingItemView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 08/06/2024.
//

import SwiftUI

struct ListingItemView: View {
    
//    var images = [
//    "listing-01",
//    "listing-02",
//    "listing-03",
//    "listing-04"
//    ]
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 9) {
            // Listing Images.
//            Rectangle()
            
//            TabView {
//                ForEach(images, id: \.self) { image in
//                    Image(image)
//                        .resizable()
//                        .scaledToFill()
//                }
//            }
//                .frame(height: 320)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .tabViewStyle(.page)
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing details.
            HStack(alignment: .top) {
                // Details.
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 meter away")
                        .foregroundStyle(.gray)
                    Text("Nov 03 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 3) {
                        Text("₹ \(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("/ night")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
                // Rating.
                RatingView()
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
