//
//  PokemonDetailView.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI
import Kingfisher

let sampleNPoke = Pokemon(id: 1, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "Land", height: 10, weight: 10, attack: 10, defense: 10, description: "test another one")

let sampleNVM = PokemonViewModel()

struct PokemonDetailView: View {
    
    // Objects of Model and View Model.
    let viewModel: PokemonViewModel
    let pokemon: Pokemon
    
    var body: some View {
//        Text("I chose you, \(pokemon.name).")
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.6), Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.2)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment:  .leading) {
                // Pokemon Image.
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(viewModel.backgroundColor(forType: pokemon.type)), radius: 5)
                    .frame(width: 250, height: 250, alignment: .center)
                    .padding()
                    .padding(.leading, 20)
                
                HStack {
                    // Pokemon Name.
                    Text(pokemon.name.capitalized)
                        .font(.title)
                        .font(.system(size: 28, weight: .bold, design: .serif))
                    
                    // Pokemon Type.
                    Text(pokemon.type.capitalized)
                        .font(.system(size: 16, weight: .medium, design: .serif))
                        .foregroundStyle(.black)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .fill(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.3))
                                 )
                        .frame(width: 100, height: 25)
                }
                .padding(.leading)
                
                // Pokemon Description.
                Text(pokemon.description)
                    .font(.system(size: 20, weight: .regular, design: .serif))
                
                Divider()
                
                // Pokemon other details.
                VStack(alignment: .leading) {
                    // created small view to avoid repeatation.
                    Details(key: "Type :", value: pokemon.type.capitalized, image: "cloud.sun.bold.fill")
                    Details(key: "Height :", value: "\(pokemon.height)", image: "staroflife.circle.fill")
                    Details(key: "Weight :", value: "\(pokemon.weight)", image: "sparkles")
                    Details(key: "Attack :", value: "\(pokemon.attack)", image: "tropicalstorm")
                    Details(key: "Defense :", value: "\(pokemon.defense)", image: "bonjour")
                }
                .padding()
            }
            .frame(width: 330, height: 670, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding(.all, 8)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: .black.opacity(0.3), radius: 9, x: 9, y: 9)
            .shadow(color: .white.opacity(0.6), radius: 10, x: -10, y: -10)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

//  A small view to display other details of the pokemon in HStack.
struct Details: View {
    let key: String
    let value: String
    let image: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: image)
                .font(.system(size: 18, weight: .semibold, design: .serif))
            Text(key)
                .font(.system(size: 18, weight: .semibold, design: .serif))
            Text(value)
                .font(.system(size: 16, weight: .semibold, design: .serif))
        }
    }
}

#Preview {
    PokemonDetailView(viewModel: sampleNVM, pokemon: sampleNPoke)
}
