//
//  ProfileAndPostView.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBarView()
            Divider()
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundStyle(.blue)
                Text("Photo")
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundStyle(.green)
                Text("Video")
                Spacer()
                
                Image(systemName: "calendar")
                    .foregroundStyle(.orange)
                Text("Calender")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileAndPostView()
}
