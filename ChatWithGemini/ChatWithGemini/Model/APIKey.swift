//
//  APIKey.swift
//  ChatWithGemini
//
//  Created by Laxman Singh Koranga on 09/07/2024.
//

// This files fetches the API Key.
import Foundation

enum APIKey {
    // Fetches the API key from "Generative-Info.plist".
    // declared the computed property "default" , it's not storing a value but computing a particular value.
    static var `default`: String {
        // finding the path of the path, which is of type .plist from the Bundle container directory.
        guard let filePath = Bundle.main.path(forResource: "GenerativeAI-Info", ofType: "plist") else {
            fatalError("Couldn't find the file 'GenerativeAI-Info.plist'.")
        }
        
        // file found, now reading out the content of the file using dictionary, and finding the value ie, associated with the "API_Key" and checking whether it's a string or not.
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "API_KEY") as? String else {
            fatalError("Couldn't find key 'API_KEY' in 'GenerativeAI-Info.plist'.")
        }
        
        // condition for API, as we know APIs doesn't start with underscore.
        if value.starts(with: "_") {
            fatalError("Follow the instructions at https://ai.google.dev/tutorials/setup to get an API Key.")
        }
        // everything goes accordingly, this will return value.
        return value
    }
}
