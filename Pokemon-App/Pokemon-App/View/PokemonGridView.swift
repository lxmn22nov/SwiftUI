//
//  PokemonGridView.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI

// Grid View to display all the pokemons.
struct PokemonGridView: View {
    // gridItems for lazy grid view.
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    // object for view model.
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                // Gradient Background.
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.3),Color.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16) {
                        // Parsing through all the data from API and Model.
                        ForEach(viewModel.pokemon) { pokemon in
                            NavigationLink {
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }
                        }
                    }
                }
                .navigationTitle("Pokemon Club \(viewModel.pokemon.count)")
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    PokemonGridView()
}
