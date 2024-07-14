//
//  UserModel.swift
//  EmployeeDetails
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import UIKit

// User struct conforms to Codable to handle JSON parsing.
struct User: Codable {
    let id: Int
    let login: String
    let avatar_url: String
    
    init(id: Int, login: String, avatar_url: String) {
        self.id = id
        self.login = login
        self.avatar_url = avatar_url
    }
}
