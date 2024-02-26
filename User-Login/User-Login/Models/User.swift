//
//  User.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Virat Kohli", email: "test@gmail.com")
}
