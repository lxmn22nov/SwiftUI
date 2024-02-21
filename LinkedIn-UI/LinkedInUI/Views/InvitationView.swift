//
//  InvitationView.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Rahul", position: "SDE at Amazon", mutual: 12, image: "01" )

struct InvitationView: View {
    var Data: NetworkModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("👥 \(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            // Adding cross and tick.
            
            HStack {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            }.padding(.horizontal)
        }.frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

#Preview {
    InvitationView(Data: sampleData)
}
