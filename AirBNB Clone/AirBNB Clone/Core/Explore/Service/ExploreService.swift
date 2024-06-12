//
//  ExploreService.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 12/06/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
