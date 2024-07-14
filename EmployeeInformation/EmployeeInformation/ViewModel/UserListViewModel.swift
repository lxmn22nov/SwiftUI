//
//  UserListViewModel.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import Foundation

// "ObservableObject": object with a publisher that emits before the object has changed.

@MainActor
final class UserListViewModel: ObservableObject {
    @Published var users: [UserModel]?
    
    func getUsers() async {
        do {
            let users = try await WebService.getUsersData()
            self.users = users
        } catch(let error) {
            print(error.localizedDescription)
        }
    }
}
