//
//  DiceView.swift
//  DiceeUI
//
//  Created by Laxman Singh Koranga on 21/01/2024.
//

import SwiftUI

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
#Preview {
    DiceView(n: 3)
}
