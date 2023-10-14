//
//  ContentView.swift
//  ProfileApp01
//
//  Created by Laxman Singh Koranga on 15/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Spacer()
                VStack(alignment: .center, spacing: 18) {
                    Image("LaxmanMemoji")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Laxman Singh Koranga")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text("iOS | Frond-End Developer")
                        .foregroundColor(.white)
                        .font(.body)
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 9)
                }
                Spacer()
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120) 
                        .frame(width: 200, height: 50, alignment:  .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(Text("Follow")
                            .fontWeight(.bold)
                            .foregroundColor(.pink)
                            .font(.system(size: 30))
                        )
                    HStack(alignment: .center, spacing: 60) {
//                        Spacer()
                        VStack {
                            Text("01")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Appreciation")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .opacity(10)
                        }
                        VStack {
                            Text("261")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .opacity(10)
                        }
                        VStack {
                            Text("426")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Following")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .opacity(10)
                        }
//                        .opacity(10)
                    }
                    Text("About Me")
                        .font(.system(size: 29))
                        .font(.system(.caption))
                        .fontWeight(.bold)
                    Text("I'm an aspiring iOS Developer. Welcome to My Profile App. This is the first iOS app created by me.")
                        .font(.system(.body))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .opacity(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
