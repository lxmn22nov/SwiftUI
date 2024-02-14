//
//  ItemModel.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 14/02/2024.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String
    
    init(Title: String, IsCompleted: Bool, Id: String = UUID().uuidString) {
        self.title = Title
        self.isCompleted = IsCompleted
        self.id = Id
    }
    
    func updateCompleted() -> ItemModel {
        return ItemModel(Title: title, IsCompleted: !isCompleted, Id: id)
    }
}
