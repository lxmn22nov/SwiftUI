//
//  OnBoardingScreenView.swift
//  ShoppingApp
//
//  Created by Laxman Singh Koranga on 18/12/2023.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
//        Text("OnBoarding Screen.")
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                        .foregroundColor(.black.opacity(0.7))
                    Text("Eat fresh fruits and try to be healthy.")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10) {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        )
                }
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    OnBoardingScreenView()
}
