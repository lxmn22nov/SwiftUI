//
//  ListViewModel.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 14/02/2024.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [ ]
    
    let itemsKey: String = "items_List"
    
    func saveItems() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
}
