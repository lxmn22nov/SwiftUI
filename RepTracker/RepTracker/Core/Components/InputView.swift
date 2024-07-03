//
//  InputView.swift
//  RepTracker
//
//  Created by Laxman Singh Koranga on 02/07/2024.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundStyle(.gray)
                .fontDesign(.monospaced)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .fontDesign(.monospaced)
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .fontDesign(.monospaced)
            }
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "EmailAddress", placeholder: "name@example.com")
}
