//
//  Tab.swift
//  ScrollableTabView
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import Foundation

// Tab's.
enum Tab: String, CaseIterable {
    case chats = "Chats"
    case calls = "Calls"
    case settings = "Settings"
    
    var systemImage: String {
        switch self {
        case .calls:
            return "phone"
        case .chats:
            return "bubble.left.and.bubble.right"
        case .settings:
            return "gear"
        }
    }
}
