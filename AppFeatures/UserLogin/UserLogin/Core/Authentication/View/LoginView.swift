//
//  LoginView.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    /*
     viewModel variable creates a problem here, meaning we have to use it in RegistrationView also, with property wrapper @StateObject, and we have create another instance of the viewModel there. And it'll creates bunch of instances all across the app.
     But, we can create ObservedObject var viewModel, but its annoying to, instead creating an Environment object, and we can use across all over the app wherever we need to use it.
    */
//    @StateObject var viewModel = AuthViewModel()
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                // Image.
               ImageViewComponent()
                
                // Form Fields.
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .textInputAutocapitalization(.never)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // forgot password.
                NavigationLink {
                    // Forgot password view.
                    ForgotPasswordView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Spacer()
                    
                    HStack {
                        Text("Forgot Password?")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundStyle(.pink)
                    .padding(.top)
                    .padding(.trailing)
                }
                
                // sign-in button.
                Button {
                    Task {
                        try await viewModel.signIn(withEmail: email, password: password)
                    }
                } label: {
                    HStack {
                        Text("Sign-In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemPink))
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)
                .cornerRadius(9)
                .padding(.top, 24)
                
                Spacer()
                
                // sign-up button.
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundStyle(.blue)
                }
            }
        }
    }
}

// Authentication Form Protocol.
extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 6
    }
}

#Preview {
    LoginView()
}
