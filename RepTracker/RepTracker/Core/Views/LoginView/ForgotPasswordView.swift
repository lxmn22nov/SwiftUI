//
//  ForgotPasswordView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 03/07/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @State private var otp = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // Image
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
            .background(Color(.systemBlue))
            .clipShape(RoundedRectangle(cornerRadius: 9))
            .padding(.top)
            
            // Remember password.
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
        }
    }
}

#Preview {
    ForgotPasswordView()
}
