//
//  LoginView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // Logo.
                ImageViewComponent()
                
                // Form Fields.
                VStack {
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
                    // forgot password view.
                    ForgotPasswordView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Spacer()
                    
                    HStack {
                        Text("Forgot Password?")
                            .fontDesign(.monospaced)
                            .fontWeight(.semibold)
                    }
                    .font(.system(size: 14))
                    .padding(.top)
                    .padding(.trailing)
                }
                
                // Sign-In Button.
                Button {
                    // Sign in button logic.
                    
                } label: {
                    HStack {
                        Text("Sign-In")
                            .fontDesign(.monospaced)
                            .fontWeight(.semibold)
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(9)
                .padding(.top, 24)
                
                Spacer()
                
                // Don't have an account NavigationLink.
                NavigationLink {
                    // Registration View.
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .fontDesign(.monospaced)
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
