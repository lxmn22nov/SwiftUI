//
//  UserDetailView.swift
//  EmployeeInformation
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import SwiftUI

struct UserDetailView: View {
    var user: UserModel
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: user.avatarURL ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .foregroundColor(.blue)
            }
            .frame(height: 400, alignment: .top)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    Text(user.login?.capitalized ?? "")
                        .font(.title)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                }
                .padding()
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Node ID: ")
                            .font(.headline)
                            .fontDesign(.serif)
                        Text(user.nodeID ?? "")
                            .font(.headline)
                            .fontDesign(.serif)
                            .foregroundStyle(.blue)
                    }
                    
                    HStack {
                        Text("Gravatar ID: ")
                            .font(.headline)
                            .fontDesign(.serif)
                        Text(user.gravatarID ?? "")
                            .font(.headline)
                            .fontDesign(.serif)
                            .foregroundStyle(Color.gray)
                    }
                    
                    Text("Org Mail: \(user.organizationsURL ?? "")")
                        .font(.headline)
                        .fontDesign(.serif)
                    
                    Text("Repository: \(user.reposURL ?? "")")
                        .font(.headline)
                        .fontDesign(.serif)
                    
                    Text("Event URL: \(user.receivedEventsURL ?? "")")
                        .font(.headline)
                        .fontDesign(.serif)
                }
                Spacer()
            }
            .padding()
        }

//        .navigationTitle(user.login ?? "")
    }
}

//#Preview {
//    UserDetailView(user: UserMod)
//}
