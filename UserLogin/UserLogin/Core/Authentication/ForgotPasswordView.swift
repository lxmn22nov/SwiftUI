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
    
    var body: some View {
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
                
                InputView(text: $otp,
                          title: "One-time password",
                          placeholder: "Enter One-Time Password")
            }
            .padding(.horizontal)
            .padding(.top, 12)
        }
        
        // Submit Button.
        Button {
            print("Submit")
        } label: {
            HStack {
                Text("SUBMIT")
                    .fontWeight(.semibold)
                Image(systemName: "chevron.right")
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
        }
        .background(Color(.systemPink))
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
    }
}

#Preview {
    ForgotPasswordView()
}
