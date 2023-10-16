//
//  KeyView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 16/10/2023.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = "0"
    // use this variable to do calculation.
    @State var runningNumber = 0
    // use this variable to hold the operation.
    // @State var currentOperation: Operation = .none
    @State private var changeColor = false
    
    let buttons: [[Keys]] = [
        [.clear, .negative, .percentage, .division],
        [.seven, .eight, .nine, .multiplication],
        [.four, .five, .six, .subtraction],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(changeColor ? Color("num").opacity(0.4):Color.gray.opacity(0.6))
                    .scaleEffect(changeColor ? 1.5 : 1.0)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut.speed(0.17).repeatForever(), value: changeColor)
                    .onAppear(perform: {
                        
                        self.changeColor.toggle()
                    })
                    .overlay(Text(value))
                    .bold()
                    .font(.system(size: 96))
                .foregroundColor(.black)
            }.padding()
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { elem in
                        Button {
                            self.didTap(button: elem)
                        } label: {
                            Text(elem.rawValue)
                                .font(.system(size: 30))
                                .frame(width: self.getWidth(elem: elem), 
                                       height: self.getHeight(elem: elem))
                                .background(elem.buttonColor)
                                .foregroundColor(.white)
                                .cornerRadius(self.getWidth(elem: elem) / 2)
                        }
                    }
                }.padding(.bottom, 4)
            }
        }
    }
    // getting the width of the calculator elements.
    func getWidth(elem: Keys) -> CGFloat {
        if elem == .zero {
            return (UIScreen.main.bounds.width - (5*10)) / 2
        }
        return (UIScreen.main.bounds.width - (5*10)) / 4
    }
    // getting the height of the calculator elements.
    func getHeight(elem: Keys) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*10)) / 5
    }
    
    func didTap(button: Keys) {
        print("Laxman")
    }
}
#Preview {
    KeyView()
}
