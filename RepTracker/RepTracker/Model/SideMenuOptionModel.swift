//
//  SideMenuOptionModel.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case home
    case profile
    case settings
    case analysis
    case bodyTracker
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .settings:
            return "Settings"
        case .analysis:
            return "Analysis"
        case .bodyTracker:
            return "Body Tracker"
        }
    }
    
    var systemImage: String {
        switch self {
        case .home:
            return "house"
        case .profile:
            return "person.fill"
        case .settings:
            return "gear.circle.fill"
        case .analysis:
            return "waveform.badge.magnifyingglass"
        case .bodyTracker:
            return "figure.skiing.crosscountry"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue }
}
