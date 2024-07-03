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
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            // Image.
            ImageViewComponent()
        }
        
        // Form Fields.
        VStack(spacing: 24) {
            InputView(text: $fullName,
                      title: "Full Name",
                      placeholder: "Enter your name")
            
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "name@example.com")
            .textInputAutocapitalization(.never)
            
            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
            
            ZStack(alignment: .trailing) {
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                
                if !password.isEmpty && !confirmPassword.isEmpty {
                    if password == confirmPassword {
                        Image(systemName: "checkmark.circle.fill")
                            .imageScale(.large)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.systemGreen))
                    } else {
                        Image(systemName: "xmark.circle.fill")
                            .imageScale(.large)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.systemRed))
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        // Sign-In Button.
        Button {
            Task {
                try await viewModel.createUser(withEmail: email,
                                               password: password,
                                               fullName: fullName)
            }
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
        .disabled(!formIsValid)
        .opacity(formIsValid ? 1.0 : 0.5)
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

// AuthenticationFormProtocol: Form validation.
extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 6
        && confirmPassword == password
        && !fullName.isEmpty
    }
}
#Preview {
    RegistrationView()
}
