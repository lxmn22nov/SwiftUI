//
//  ProfileView.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 69, height: 69)
                        .background(Color(.systemGray3))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading, spacing: 3) {
                        Text(User.MOCK_USER.fullName)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .accentColor(.gray)
                        
                    }
                    
                }
            }
            Section("General") {
                HStack {
                    SettingRowView(imageName: "gear",
                                   title: "Version",
                                   tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            Section("Account") {
                Button {
                    print("Sign Out...")
                } label: {
                    SettingRowView(imageName: "arrow.left.circle.fill", 
                                   title: "Sign Out",
                                   tintColor: .red)
                }
                
                Button {
                    print("Delete Account...")
                } label: {
                    SettingRowView(imageName: "xmark.circle.fill",
                                   title: "Sign Out",
                                   tintColor: .red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
