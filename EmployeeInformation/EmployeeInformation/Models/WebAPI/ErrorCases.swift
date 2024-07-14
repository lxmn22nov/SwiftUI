//
//  ErrorCases.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import Foundation

// creating custom error cases.
enum UserError: LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    case custom(error: Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
            
        case .invalidResponse:
            return "Invalid Response"
            
        case .invalidData:
            return "Invalid data"
            
        case .custom(let error):
            return error.localizedDescription
        }
    }
}
