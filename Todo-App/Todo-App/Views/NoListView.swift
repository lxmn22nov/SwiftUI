//
//  NoListView.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 18/02/2024.
//

import SwiftUI

struct NoListView: View {
    @State var animate: Bool = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func addAnimation() {
        guard !animate else { return }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NoListView()
}
