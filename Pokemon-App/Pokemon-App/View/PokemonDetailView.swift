//
//  PokemonDetailView.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI

let sampleNPoke = Pokemon(id: 1, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "Land", height: 10, weight: 10, attack: 10, defence: 10, description: "test another one")

let sampleNVM = PokemonViewModel()

struct PokemonDetailView: View {
    
    let viewModel: PokemonViewModel
    let pokemon: Pokemon
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PokemonDetailView(viewModel: sampleNVM, pokemon: sampleNPoke)
}
