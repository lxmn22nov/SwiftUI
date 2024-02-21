//
//  PokeCell.swift
//  Pokemon-App
//
//  Created by Laxman Singh Koranga on 21/02/2024.
//

import SwiftUI
import Kingfisher

let samplePoke = Pokemon(id: 1, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "Land", height: 10, weight: 10, attack: 10, defence: 10, description: "test another one")

let sampleVM = PokemonViewModel()

struct PokeCell: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                    .foregroundColor(.black)
                    .padding(.top, 20)
                    .padding(.leading)
                HStack {
                    Text(pokemon.type.capitalized)
                        .font(.system(size: 16, weight: .medium, design: .serif))
                        .foregroundStyle(.black)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.2))
                            .frame(width: 100, height: 30))
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 69, height: 69)
                        .padding([.bottom, .trailing], 6)
                }
            }
        }
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.all, 6)
        .shadow(color: .black, radius: 9, x: 9, y: 9)
    }
}

#Preview {
    PokeCell(pokemon: samplePoke, viewModel: sampleVM)
}
