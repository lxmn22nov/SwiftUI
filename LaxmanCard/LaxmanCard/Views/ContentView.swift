//
//  ContentView.swift
//  LaxmanCard
//
//  Created by Laxman Singh Koranga on 20/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color(red: 1.00, green: 0.60, blue: 0.26)
            LinearGradient(colors: [.orange, .gray], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image("Laxman")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3).shadow(radius: 9))
                Text("Laxman Singh Koranga")
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color.white)
                Text("iOS Developer")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
//                Divider()
                InfoView(text: "+91 9410996867", imageName: "phone.fill")
                InfoView(text: "laxmankoranga03@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}
#Preview {
    ContentView()
}
