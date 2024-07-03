//
//  AuthViewModel.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
//

// AuthenticationViewModel is responsible for, having all the functionality associated with user authentication.
import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol AuthenticationFormProtocol {
    var formIsValid: Bool { get }
}
@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }
    }
    
    // sign in function.
    func signIn(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        }
    }
    
    // user account creation.
    func createUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            // user using the firebase code and storing the result into "result" variable.
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            // creating our user object.
            let user = User(id: result.user.uid, fullName: fullName, email: email)
            // encode that user object through the codable protocol.
            let encodedUser = try Firestore.Encoder().encode(user)
            // uploading that encoded data to firestore.
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
            await fetchUser()
        } catch {
            // if things went south, this error will be thrown.
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    // user signOut function.
    func signOut() {
        do {
            // signs out user on backend.
            try Auth.auth().signOut()
            // clears out user session and takes us back to login screen.
            self.userSession = nil
            // clears out current user data model.
            self.currentUser = nil
        } catch {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
    
    // user delete account function.
    func deleteAccount() {
        
    }
    
    // fetching function for user.
    func fetchUser() async {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        self.currentUser = try? snapshot.data(as: User.self)
    }
}
