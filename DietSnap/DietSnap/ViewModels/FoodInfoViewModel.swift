//
//  FoodInfoViewModel.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 19/07/2024.
//

import Foundation

class FoodInfoViewModel {
    // array of food information which if of our food info model.
    var foodInfo: [FoodInfoModel] = []
    private let manager = NetworkManager()
    
    func fetchFoodInfo() async {
        do {
            let responseFoodInfo: [FoodInfoModel] = try await manager .request(url: "http://localhost:8000/food_info/")
            print(responseFoodInfo)
        } catch {
            print("Fetch food info error:", error) 
        }
    }
}
