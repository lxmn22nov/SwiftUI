//
//  ProfileView.swift
//  UserLogin
//
//  Created by Laxman Singh Koranga on 28/06/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemPink))
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text(User.MOCK_USER.fullName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingsRowView(imageName: "gear", 
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
                    SettingsRowView(imageName: "arrow.left.circle.fill", 
                                    title: "Sign Out",
                                    tintColor: .red)
                }
                
                Button {
                    print("Delete Account...")
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill", 
                                    title: "Delete Account",
                                    tintColor: .red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
