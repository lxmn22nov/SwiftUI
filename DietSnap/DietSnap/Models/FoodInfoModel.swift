//
//  FoodInfoModel.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import Foundation

struct FoodInfoModel: Decodable {
    let id, badgeIndicator, creditsURL, cuisine, description, itemtype, name, nutritionFacts, nutritionInfo, type, defaultUnitServing : String
    let apiName, genericFacts, image, imageURL: [String]
    let healthRating, noOfServings: Int
    let ingredients: [Ingredient]
    let nutritionInfoScaled, servingSizes: [NutritionInfoScaled]
    let similarItems: [SimilarItem]
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case apiName = "api_name"
        case badgeIndicator = "badge_indicator"
        case creditsURL = "credits_url"
        case cuisine, description
        case genericFacts = "generic_facts"
        case healthRating = "health_rating"
        case image
        case imageURL = "image_url"
        case ingredients, itemtype, name
        case noOfServings = "no_of_servings"
        case nutritionFacts = "nutrition_facts"
        case nutritionInfo = "nutrition_info"
        case nutritionInfoScaled = "nutrition_info_scaled"
        case servingSizes = "serving_sizes"
        case similarItems = "similar_items"
        case type
        case defaultUnitServing = "default_unit_serving"
    }
}

struct Ingredient: Decodable {
    let ingid, name: String
    let value: Double
}

struct NutritionInfoScaled: Decodable {
    let name: String
    let value: Double
    let units: Units
}

enum Units: String, Decodable {
    case gms = "gms"
    case iu = "IU"
    case kCal = "KCal"
    case Kcal = "Kcal"
    case mcg = "mcg"
    case mg = "mg"
}

struct SimilarItem: Decodable {
    let id, name, image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, image
    }
}
