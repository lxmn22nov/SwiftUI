//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Laxman Singh Koranga on 18/12/2023.
//

import SwiftUI

struct TopSellingView: View {
    let images: [FruitModel] = [
        .init(id: 0, title: .apple, image: "apple", price: "20", color: "1"),
        .init(id: 1, title: .apricot, image: "apricot", price: "12", color: "2"),
        .init(id: 2, title: .avocado, image: "avocado", price: "70", color: "3"),
        .init(id: 3, title: .banana, image: "banana", price: "4.50", color: "4"),
        .init(id: 4, title: .blackberry, image: "blackberry", price: "1", color: "5"),
        .init(id: 5, title: .cherry, image: "cherry", price: "20", color: "6"),
        .init(id: 6, title: .dragonfruit, image: "dragonfruit", price: "120", color: "1"),
        .init(id: 7, title: .fig, image: "fig", price: "30", color: "2"),
        .init(id: 8, title: .grapes, image: "grapes", price: "1.5", color: "3"),
        .init(id: 9, title: .kiwi, image: "kiwi", price: "45", color: "4"),
        .init(id: 10, title: .lemon, image: "lemon", price: "25", color: "5"),
        .init(id: 11, title: .mango, image: "mango", price: "35", color: "6"),
        .init(id: 12, title: .muskmelon, image: "muskmelon", price: "40", color: "1"),
        .init(id: 13, title: .orange, image: "orange", price: "15", color: "2"),
        .init(id: 14, title: .papaya, image: "papaya", price: "29", color: "3"),
        .init(id: 15, title: .pear, image: "pear", price: "33", color: "4"),
        .init(id: 16, title: .pineapple, image: "pineapple", price: "122", color: "5"),
        .init(id: 17, title: .plum, image: "plum", price: "12", color: "6"),
        .init(id: 18, title: .raspberry, image: "raspberry", price: "1.2", color: "1"),
        .init(id: 19, title: .strawbery, image: "strawbery", price: "23", color: "2"),
        .init(id: 20, title: .watermelon, image: "watermelon", price: "40", color: "3")
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
