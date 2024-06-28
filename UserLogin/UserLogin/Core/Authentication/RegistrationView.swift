//
//  RegistrationView.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
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
            // Image.
            Image(.airbnbLogo)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
        }
        
        // Form Fields.
        VStack(spacing: 24) {
            InputView(text: $fullName,
                      title: "Full Name",
                      placeholder: "Enter your name")
            
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "name@example.com")
            .textInputAutocapitalization(.none)
            
            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
            
            InputView(text: $confirmPassword,
                      title: "Confirm Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        // Sign-In Button.
        Button {
            print("Sign user up...")
        } label: {
            HStack {
                Text("SIGN UP")
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
        
        // Already have an account.
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3) {
                Text("Already have an account?")
                Text("Sign In")
                    .fontWeight(.bold)
            }
            .font(.system(size: 14))
            .foregroundStyle(.blue)
        }
    }
}

#Preview {
    RegistrationView()
}
