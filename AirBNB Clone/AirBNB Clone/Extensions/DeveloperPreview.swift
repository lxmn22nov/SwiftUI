//
//  DeveloperPreview.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 11/06/2024.
//

// Mock Data.
import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
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
            address: "Mall Road, Nainital",
            city: "Nainital",
            state: "Uttrakhand",
            title: "Resort Nainital",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .townHouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Himanshu Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 567,
            latitude: 35.7850,
            longitude: -81.1936,
            imageURLs: ["listing-05","listing-06","listing-07","listing-08"],
            address: "Massouri Road",
            city: "Dehradun",
            state: "Uttrakhand",
            title: "Massouri Villa",
            rating: 5.0,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Ashish Kumar Singh",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 6,
            numberOfBathrooms: 8,
            numberOfGuests: 12,
            numberOfBeds: 8,
            pricePerNight: 5567,
            latitude: 35.7850,
            longitude: -40.1936,
            imageURLs: ["listing-09","listing-10","listing-11","listing-12"],
            address: "Main Market",
            city: "Almora",
            state: "Uttrakhand",
            title: "Almora Villa",
            rating: 4.0,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Himanshu Koranga",
            ownerImageUrl: "Laxman1-modified",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 967,
            latitude: 45.7850,
            longitude: -60.1936,
            imageURLs: ["listing-13","listing-14","listing-15","listing-16"],
            address: "Near Kapkot Bridge",
            city: "Bageshwar",
            state: "Uttrakhand",
            title: "Kapkot Villa",
            rating: 4.50,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
    ]
}
