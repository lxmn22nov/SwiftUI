//
//  QuoteModel.swift
//  Excerpt
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import Foundation

struct QuoteModel: Codable {
    let id, content, author: String
    let tags: [String]
    let authorSlug: String
    let length: Int
    let dateAdded, dateModified: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case content, author, tags, authorSlug, length, dateAdded,  dateModified
    }
    static func defaultQuote() -> QuoteModel {
        return QuoteModel(id: "J-47k8g-i", content: "Love is a friendship set to music.", author: "Joseph Campbell", tags: ["Friendship", "Love"], authorSlug: "joseph-campbell", length: 33, dateAdded: "2019-03-17", dateModified: "")
    }
}
