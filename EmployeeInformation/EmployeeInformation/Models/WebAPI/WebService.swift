//
//  WebService.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import Foundation

// Creating WebService for API Call.

// class is marked final, no other class can inherith from it.
// static: directly access the static properties & methods of class with the help of class itself instead of creating the instance of the class.
// "await": place the await keyword wherever we need to call an async function.
// "URLSession": this class provides a API for downloading data from and uploading data to endpoints indicated by URLs.
// "JSONDecoder": an object that decodes instances of a data type from JSON objects.
// "do-catch statement": if anything goes wrong, it can throw an error. To catch this error, we need to implement this statement.


final class WebService {
    
    static func getUsersData() async throws -> [UserModel] {
        let urlString = "https://api.github.com/users"
        
        guard let url = URL(string: urlString) else {
            throw UserError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
                response.statusCode == 200 else {
            throw UserError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([UserModel].self, from: data)
        } catch {
            throw UserError.invalidData
        }
    }
}
