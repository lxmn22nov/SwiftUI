//
//  ListViewModel.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 14/02/2024.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [ ] {
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "items_List"
    
    init() {
        getItems()
    }
    
    // Retreving or getting the empty/full array.
    func getItems() {
        // storing user JSON data.
        guard let data = UserDefaults.standard.data(forKey: itemsKey) else { return }
        
        // saving user JSON data in our specified data format.
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        
        // saving data into items variable.
        self.items = savedItems
    }
    
    func saveItems() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
}
