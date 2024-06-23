//
//  ModelData.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 23/06/2024.
//

// Creating a load() method that fetches JSON data with a given name from the app's main bundle.
import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

// load() relies on the return type's conformance to the Decodable protocol, which is one component of the Codable protocol.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("Couldn't find \(filename) in the main bundle.") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
