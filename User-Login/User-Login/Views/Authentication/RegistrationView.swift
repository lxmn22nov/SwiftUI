//
//  RegistrationView.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // image.
            Image("code")
                .resizable()
                .scaledToFit()
                .frame(width: 105, height: 120)
                .padding(.vertical, 33)
            
            // Form Fields.
            VStack(spacing: 24) {
                InputView(text: $email, 
                          title: "Email Address",
                          placeholder: "name@example.com")
                    .autocapitalization(.none)
                InputView(text: $fullName, 
                          title: "Full Name",
                          placeholder: "Enter your name.")
                InputView(text: $password, 
                          title: "Password",
                          placeholder: "Enter your password.",
                          isSecureField: true)
                InputView(text: $confirmPassword, 
                          title: "Confirm Password",
                          placeholder: "Confirm your password.",
                          isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            // sign up button.
            Button {
                print("Log user up...")
            } label: {
                HStack {
                    Text("SIGN UP")
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
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account!")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
