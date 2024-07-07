//
//  APIKey.swift
//  ChatWithGemini
//
//  Created by Laxman Singh Koranga on 07/07/2024.
//

import Foundation

enum APIKey {
    // fetching the API key from "GenerativeAI-Info.plist" file.
    static var `default`: String {
        guard let filePath = Bundle.main.path(forResource: "GenerativeAI-Info", ofType: "plist")
        else {
            fatalError("Couldn't find the file 'GenerativeAI-Info.plist.")
        }
        // trying to read the content of the file, using dictionary.
        let plist = NSDictionary(contentsOfFile: filePath)
        // reading values that are associated with the variable "API_KEY".
        guard let value = plist?.object(forKey: "API_KEY") as? String
        else {
            fatalError("Couldn't find key 'API_KEY' in 'GenerativeAI-Info.plist'.")
        }
        // extra check if API key starting with the underscore, it'll throw an error.
        if value.starts(with: "_") {
            fatalError("Follow the instructions at https://ai.google.dev/tutorials/setup to get an API key.")
        }
        return value
    }
}
