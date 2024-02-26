//
//  LoginView.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // image.
                Image("code")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105, height: 120)
                    .padding(.vertical, 33)
                
                // Form Fields.
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    InputView(text: $password, title: "Password", placeholder: "Enter your password.", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                    
                // sign in button.
                Button {
                    print("Log user in...")
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(9)
                .padding(.top, 24)
                
                Spacer()
                
                // sign up button.
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
