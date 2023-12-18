//
//  FruitCardView.swift
//  ShoppingApp
//
//  Created by Laxman Singh Koranga on 18/12/2023.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "180", color: "1")

struct FruitCardView: View {
    let fruits: FruitModel
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 5) {
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
            ZStack {
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }.offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
//        .shadow(color: .gray, radius: 5, x: 5, y: 5)
    }
}

#Preview {
    FruitCardView(fruits: images)
}
