//
//  ButtonView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct ButtonView: View {
    let calculatorButton: CalculatorButton
    let fgColor: Color
    let bgColor: Color
    
    var systemImage: String? {
        let value = calculatorButton.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    
    var text: String? {
        let value = calculatorButton.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    let buttonDiamension: CGFloat = UIScreen.main.bounds.width / 5
//    let buttonDiamension: CGFloat = (UIScreen.main.bounds.width - (5*10)) / 5
    
    var body: some View {
        ZStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: buttonDiamension, height: buttonDiamension)
        .foregroundStyle(fgColor)
        .background(bgColor)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
        .clipShape(Circle())
        .shadow(color: bgColor.opacity(0.5), radius: 6, x: 5, y: 5)
    }
}

#Preview {
    VStack {
        ButtonView(calculatorButton: .one, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
        ButtonView(calculatorButton: .percentage, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
        ButtonView(calculatorButton: .addition, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
    }
}
