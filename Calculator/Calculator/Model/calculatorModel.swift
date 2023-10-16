//
//  calculatorModel.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 16/10/2023.
//

import Foundation
import SwiftUI

enum Keys: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "÷"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percentage = "%"
    case negative = "+/-"
    
    var buttonColor: Color {
        switch self {
        case .add, .subtraction, .multiplication, .division, .equal:
            return Color("Voperator")
        case .clear, .negative, .percentage:
            return Color("Hoperator")
        default:
            return Color("Num")
        }
    }
}

enum Operation {
    case add, subtraction, multiplication, division, none
}
