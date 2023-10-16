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
    @State var currentOperation: Operation = .none
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
                    .animation(Animation.easeInOut.speed(0.15).repeatForever(), value: changeColor)
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
        switch button {
        case .add, .subtraction, .multiplication, .division, .equal:
            if button == .add {
                self.currentOperation = .add
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .subtraction {
                self.currentOperation = .subtraction
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .multiplication {
                self.currentOperation = .multiplication
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .division {
                self.currentOperation = .division
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .equal {
                let runningValue = self.runningNumber
                let currentValue = Int(self.value) ?? 0
                
                switch self.currentOperation {
                case .add: self.value = "\(runningValue + currentValue)"
                case .subtraction: self.value = "\(runningValue - currentValue)"
                case .multiplication: self.value = "\(runningValue * currentValue)"
                case .division: self.value = "\(runningValue / currentValue)"
                case .none:
                    break
                }
            }
            if button != .equal {
                self.value = "0"
            }
        case .clear:
            self.value = "0"
        case .decimal, .negative, .percentage:
            //complete
            break
        default:
            let number = button.rawValue
            if self.value == "0" {
                value = number
            }
            else {
                self.value = "\(self.value)\(number)"
            }
        }
    }
}
#Preview {
    KeyView()
}
