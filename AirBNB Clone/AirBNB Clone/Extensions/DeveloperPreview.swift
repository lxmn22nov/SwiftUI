//
//  DeveloperPreview.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 11/06/2024.
//

// Mock Data.
import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Laxman Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 1267,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-01","listing-02","listing-03","listing-04"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Laxman Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 567,
            latitude: 35.7850,
            longitude: -81.1936,
            imageURLs: ["listing-01","listing-02","listing-03","listing-04"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 5.0,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Laxman Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 6,
            numberOfBathrooms: 8,
            numberOfGuests: 12,
            numberOfBeds: 8,
            pricePerNight: 5567,
            latitude: 35.7850,
            longitude: -40.1936,
            imageURLs: ["listing-01","listing-02","listing-03","listing-04"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.0,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Laxman Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 967,
            latitude: 45.7850,
            longitude: -60.1936,
            imageURLs: ["listing-01","listing-02","listing-03","listing-04"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.50,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
    ]
}
