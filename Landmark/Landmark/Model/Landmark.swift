//
//  Landmark.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

// Defining the Landmark structure with properties matching with the landmarkData.json data file.
import Foundation
import SwiftUI
import CoreLocation

// Adding "Codable" conformance makes it easier to move data between the structure & a data file.
struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // Adding "imageName" property to read the name of the image from the data & computed image property that loads an image from the asset catalog.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // Managing info about the landmark's location.
    private var coordinates: Coordinates
    
    // computed a locationCoordinate property.
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
}
