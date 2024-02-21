//
//  HomeScreen.swift
//  LinkedInUI
//
//  Created by Laxman Singh Koranga on 20/12/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 21) {
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
