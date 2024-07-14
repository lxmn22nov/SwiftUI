//
//  ContentView.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel = UserListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.users ?? [], id: \.id) { user in
                NavigationLink(destination: UserDetailView(user: user)) {
                    HStack(spacing: 20) {
                        AsyncImage(url: URL(string: user.avatarURL ?? "")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                        } placeholder: {
                            Circle()
                                .foregroundColor(.blue)
                        }
                        .frame(width: 50, height: 50)
                        
                        VStack(alignment: .leading) {
                            Text(user.login?.capitalized ?? "")
                                .font(.headline)
                                .fontDesign(.serif)
                        }
                    }
                }
            }
            .navigationTitle("Employee List")
        }
        .task {
            await viewModel.getUsers()
        }
    }
}

#Preview {
    UserListView()
}
