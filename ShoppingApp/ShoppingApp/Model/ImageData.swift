//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Laxman Singh Koranga on 18/12/2023.
//

import Foundation

struct  FruitModel {
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color: String
}

enum fruitTitle: String {
    case Apple, Apricot, Avocado, Banana, Blackberry, Cherry, Dragonfruit, Fig, Grapes, Kiwi, Lemon, Mango, Muskmelon, Orange, Papaya, Pear, Pineapple, Plum, Raspberry, Strawbery, Watermelon
}
