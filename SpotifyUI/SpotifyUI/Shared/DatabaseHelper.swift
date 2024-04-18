//
//  DatabaseHelper.swift
//  SpotifyUI
//
//  Created by Laxman Singh Koranga on 14/04/2024.
//

import Foundation

struct DatabaseHelper {
    // Fetch request for products.
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        
        return products.products
    }
    // Fetch requests for Users.
    func getUsers() async throws -> [User] {
        guard let url = URL(string: "https://dummyjson.com/users") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let users = try JSONDecoder().decode(UserArray.self, from: data)
        
        return users.users
    }
}
