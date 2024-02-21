//
//  PokemonViewModel.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchData() {
        guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            // store this data.
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
}
