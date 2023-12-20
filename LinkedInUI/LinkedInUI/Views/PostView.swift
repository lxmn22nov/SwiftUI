//
//  PostView.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4000, profileImage: "00"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 3000, profileImage: "01"),
    .init(id: 2, Image: "2", title: "Synopsys Inc", followers: 6000, profileImage: "02"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 1000, profileImage: "03"),
    .init(id: 4, Image: "4", title: "Intel", followers: 9000, profileImage: "04"),
    .init(id: 5, Image: "5", title: "HP", followers: 14000, profileImage: "05"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 400, profileImage: "00"),
    .init(id: 7, Image: "7", title: "Arrikto", followers: 100, profileImage: "01"),
    .init(id: 8, Image: "8", title: "PWC", followers: 1400, profileImage: "02"),
    .init(id: 9, Image: "9", title: "Delloite", followers: 600, profileImage: "03"),
    .init(id: 10, Image: "10", title: "Appinventive", followers: 2230, profileImage: "04"),
    .init(id: 11, Image: "11", title: "Dell", followers: 3460, profileImage: "05"),
    .init(id: 12, Image: "12", title: "Phillips", followers: 8700, profileImage: "00")
]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                ForEach(postData, id: \.id) { data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 42){
                        ForEach(socialView, id: \.ids) { data in
                            VStack {
                                Image(systemName: data.image)
                                Text("\(data.title)")
                            }
                            .foregroundStyle(.black.opacity(0.9))
                            .font(.subheadline)
                        }.padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    PostView()
}
