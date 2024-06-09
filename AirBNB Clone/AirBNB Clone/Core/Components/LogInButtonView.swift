//
//  LogInButtonView.swift
//  AirBNB Clone
//
//  Created by Laxman Singh Koranga on 10/06/2024.
//

import SwiftUI

struct LogInButtonView: View {
    var body: some View {
        Button {
            print("Log in")
        } label: {
            Text("Log in")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LogInButtonView()
}
