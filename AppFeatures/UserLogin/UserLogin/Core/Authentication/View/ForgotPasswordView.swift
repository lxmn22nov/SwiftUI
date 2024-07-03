//
//  ForgotPasswordView.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @State private var otp = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            // Image.
            ImageViewComponent()
            
            // Form Fields.
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "name@example.com")
                .textInputAutocapitalization(.none)
            }
            .padding(.horizontal)
            .padding(.top, 12)
        }
        
        // Submit Button.
        Button {
            print("Submit")
        } label: {
            HStack {
                Text("SEND RESET LINK")
                    .fontWeight(.semibold)
                Image(systemName: "chevron.right")
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
        }
        .background(Color(.systemPink))
        .disabled(!formIsValid)
        .opacity(formIsValid ? 1.0 : 0.5)
        .clipShape(RoundedRectangle(cornerRadius: 9))
        .padding(.top)
        
        // Remember Password.
        Button {
            dismiss()
        } label: {
            Spacer()
            HStack(spacing: 3) {
                Text("Remember Password!")
            }
        }
        .font(.system(size: 14))
        .foregroundStyle(.blue)
        .padding(.top)
        .padding(.trailing)
        
        Spacer()
        
        // Back to Login.
        Button {
            dismiss()
        } label: {
            Spacer()
            HStack(spacing: 3) {
                Image(systemName: "chevron.left")
                Text("Back to Login")
            }
        }
        .font(.system(size: 14))
        .fontWeight(.bold)
        .foregroundStyle(.blue)
        .padding(.trailing, 139)
    }
}

extension ForgotPasswordView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
    }
}
#Preview {
    ForgotPasswordView()
}
