//
//  ProfileView.swift
//  User-Login
//
//  Created by Laxman Singh Koranga on 27/02/2024.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                Section {
                    HStack {
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 69, height: 69)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 3) {
                            Text(user.fullName)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            Text(user.email)
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
                    // Helps user to jump over to sign in page.
                    Button {
//                        print("Sign Out...")
                        viewModel.signOut()
                    } label: {
                        SettingRowView(imageName: "arrow.left.circle.fill",
                                       title: "Sign Out",
                                       tintColor: .red)
                    }
                    // terminates account, data.
                    Button {
                        print("Delete Account...")
                    } label: {
                        SettingRowView(imageName: "xmark.circle.fill",
                                       title: "Delete Account",
                                       tintColor: .red)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
