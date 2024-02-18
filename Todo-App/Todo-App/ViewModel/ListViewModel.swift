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
    
    // CRUD: adding item.
    func addItem(title: String) {
        let newItem = ItemModel(Title: title, IsCompleted: false)
        items.append(newItem)
    }
    
    // upadating items.
    func update(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompleted()
        }
    }
    
    // deleting item.
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    // moving items.
    func moveItems(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
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
