//
//  PokemonGridView.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI

struct PokemonGridView: View {
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.3),Color.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16) {
                        ForEach(viewModel.pokemon) { pokemon in
                            NavigationLink {
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PokemonGridView()
}
