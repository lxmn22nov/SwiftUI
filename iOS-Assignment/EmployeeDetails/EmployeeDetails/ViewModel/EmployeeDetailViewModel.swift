//
//  UserDetailViewModel.swift
//  EmployeeDetails
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//
// Defined ViewModel.
import Foundation

class EmployeeDetailViewModel {
    private let user: EmployeeModel
    
    var userName: String {
        return user.login.capitalized
    }
    
    var avatarURL: URL? {
        return URL(string: user.avatarURL)
    }
    
    var otherDetails: String {
        var details = ""
        details += "ID: \(user.id)\n"
        details += "URL: \(user.url)\n"
        details += "HTML URL: \(user.htmlURL)\n"
        details += "Type: \(user.type)\n"
        details += "Site Admin: \(user.siteAdmin)\n"
        return details
    }
    
    init(user: EmployeeModel) {
        self.user = user
    }
}
