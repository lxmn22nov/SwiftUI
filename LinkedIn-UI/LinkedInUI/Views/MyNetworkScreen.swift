//
//  MyNetworkScreen.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Eklavya", position: "Data Engineer at Dell", mutual: 34, image: "00"),
    .init(id: 1, name: "Lakshya", position: "Professional Gamer", mutual: 44, image: "01"),
    .init(id: 2, name: "Tanishq", position: "Professional Gamer", mutual: 12, image: "02"),
    .init(id: 3, name: "Dishant", position: "Businessman", mutual: 77, image: "03"),
    .init(id: 4, name: "Aditya", position: "SDE at Philips", mutual: 35, image: "04"),
    .init(id: 5, name: "Aditi", position: "SDE at Verizon", mutual: 101, image: "05"),
    .init(id: 6, name: "Bipin", position: "SDE at PWC", mutual: 23, image: "01"),
    .init(id: 7, name: "Himanshu", position: "Bank PO", mutual: 120, image: "02"),
    .init(id: 8, name: "Ashish", position: "Data Engineer at OpenAI", mutual: 60, image: "03")
]

struct MyNetworkScreen: View {
    var body: some View {
        VStack{
            SearchBarView()
            
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(width: .infinity, height: 9)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                Divider()
                
                // Looping the NetworkData.
                ForEach(networkData, id: \.id) { data in
                    InvitationView(Data: data)
                    Divider()
                }
            }
        }
    }
}
#Preview {
    MyNetworkScreen()
}
