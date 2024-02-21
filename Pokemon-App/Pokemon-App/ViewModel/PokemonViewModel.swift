//
//  PokemonViewModel.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI

// View Model of Pokemon.
class PokemonViewModel: ObservableObject {
    // Object of pokemon model.
    @Published var pokemon = [Pokemon]()
    
    // created base url of the API.
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    // calling the fetch method to call API.
    init() {
        fetchData()
        print(pokemon)
    }
    
    // Method to fetch data from API.
    func fetchData() {
        // fetch data from url.
        guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data?.parseData(removeString: "null,") else { return }
            
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            // store this data.
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .orange
        case "poison": return .purple
        case "water": return .blue
        case "electric": return .yellow
        case "psychic": return .brown
        case "normal": return .magenta
        case "ground": return .green
        case "flying": return .cyan
        case "fairy": return .systemTeal
        default: return .systemPink
        }
    }
}

// an extension to remove null and string format from retrived data.
extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        
        // replacing the occurance of unwanted string(sentances) with "".
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        
        // return data in the form of utf8 format.
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        print("Here is the data.")
        print(data)
        return data
    }
}
