//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Laxman Singh Koranga on 18/12/2023.
//

import SwiftUI

struct TopSellingView: View {
    let images: [FruitModel] = [
        .init(id: 0, title: .Apple, image: "apple", price: "₹20 each", color: "1"),
        .init(id: 1, title: .Apricot, image: "apricot", price: "₹12 each", color: "2"),
        .init(id: 2, title: .Avocado, image: "avocado", price: "₹70 each", color: "3"),
        .init(id: 3, title: .Banana, image: "banana", price: "₹4.50 each", color: "4"),
        .init(id: 4, title: .Blackberry, image: "blackberry", price: "₹1 each", color: "5"),
        .init(id: 5, title: .Cherry, image: "cherry", price: "₹20 each", color: "6"),
        .init(id: 6, title: .Dragonfruit, image: "dragonfruit", price: "₹120 each", color: "1"),
        .init(id: 7, title: .Fig, image: "fig", price: "₹30 each ", color: "2"),
        .init(id: 8, title: .Grapes, image: "grapes", price: "₹1.5 each", color: "3"),
        .init(id: 9, title: .Kiwi, image: "kiwi", price: "₹45 each", color: "4"),
        .init(id: 10, title: .Lemon, image: "lemon", price: "₹25 each", color: "5"),
        .init(id: 11, title: .Mango, image: "mango", price: "₹35 each", color: "6"),
        .init(id: 12, title: .Muskmelon, image: "muskmelon", price: "₹40 each", color: "1"),
        .init(id: 13, title: .Orange, image: "orange", price: "₹15 each", color: "2"),
        .init(id: 14, title: .Papaya, image: "papaya", price: "₹29 each", color: "3"),
        .init(id: 15, title: .Pear, image: "pear", price: "₹33 each", color: "4"),
        .init(id: 16, title: .Pineapple, image: "pineapple", price: "₹122 each", color: "5"),
        .init(id: 17, title: .Plum, image: "plum", price: "₹12 each", color: "6"),
        .init(id: 18, title: .Raspberry, image: "raspberry", price: "₹1.2 each", color: "1"),
        .init(id: 19, title: .Strawbery, image: "strawbery", price: "₹23 each", color: "2"),
        .init(id: 20, title: .Watermelon, image: "watermelon", price: "₹40 each", color: "3")
    ]
    
    var body: some View {
        // for adding horizontal scrolling.
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                ForEach(images, id: \.id) { post in
                    NavigationLink(destination: DetailsView(fruit: post.title)) {
                        FruitCardView(fruits: post)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    }
                }
            }
        }
    }
}

#Preview {
    TopSellingView()
}
