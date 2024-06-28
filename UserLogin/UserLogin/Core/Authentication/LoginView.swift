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
    
    var body: some View {
        NavigationStack {
            VStack {
                // Image.
                Image(.airbnbLogo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                // Form Fields.
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .textInputAutocapitalization(.none)
                    
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
                    print("Log user in...")
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

#Preview {
    LoginView()
}
