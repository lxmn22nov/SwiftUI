//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Laxman Singh Koranga on 21/07/2024.
//

import SwiftUI

struct CalculatorButtonView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    let buttonData: [RowOfCalculatorButtonModel] = [
        RowOfCalculatorButtonModel(row: [
            CalculatorButtonModel(
                calculatorButton: .clear,
                color: foregroundTopButtonsColor
            ),
            CalculatorButtonModel(
                calculatorButton: .negative,
                color: foregroundTopButtonsColor
            ),
            CalculatorButtonModel(
                calculatorButton: .percentage,
                color: foregroundTopButtonsColor
            ),
            CalculatorButtonModel(
                calculatorButton: .division,
                color: foregroundTopButtonsColor
            )
        ]),
        RowOfCalculatorButtonModel(row: [
            CalculatorButtonModel(calculatorButton: .seven),
            CalculatorButtonModel(calculatorButton: .eight),
            CalculatorButtonModel(calculatorButton: .nine),
            CalculatorButtonModel(calculatorButton: .multiplication,
                                 color: foregroundRightButtonsColor
                                 )
        ]),
        RowOfCalculatorButtonModel(row: [
            CalculatorButtonModel(calculatorButton: .four),
            CalculatorButtonModel(calculatorButton: .five),
            CalculatorButtonModel(calculatorButton: .six),
            CalculatorButtonModel(calculatorButton: .subtraction,
                                  color: foregroundRightButtonsColor
                                 )
        ]),
        RowOfCalculatorButtonModel(row: [
            CalculatorButtonModel(calculatorButton: .one),
            CalculatorButtonModel(calculatorButton: .two),
            CalculatorButtonModel(calculatorButton: .three),
            CalculatorButtonModel(calculatorButton: .addition,
                                  color: foregroundRightButtonsColor
                                 )
        ]),
        RowOfCalculatorButtonModel(row: [
            CalculatorButtonModel(calculatorButton: .zero),
            CalculatorButtonModel(calculatorButton: .decimal),
            CalculatorButtonModel(calculatorButton: .equal,
                                  color: foregroundRightButtonsColor
                                 )
        ])
    ]
    
    var body: some View {
        Grid {
            ForEach(buttonData) { rowOfCalculatorButtonsModel in
                GridRow {
                    ForEach(rowOfCalculatorButtonsModel.row) { calculatorButtonModel in
                        Button(action: {
//                            print("Button pressed")
                            buttonPressed(calculatorButton: calculatorButtonModel.calculatorButton)
                        }, label: {
                            ButtonView(
                                calculatorButton: calculatorButtonModel.calculatorButton,
                                fgColor: calculatorButtonModel.color,
                                bgColor: buttonBackgroundColor)
                        })
                    }
                }
            }
        }
        .padding()
        .background(
            secondaryBackgroundColor
                .cornerRadius(21)
        )
    }
    
    func buttonPressed(calculatorButton: CalculatorButton) {
        // Logic.
        switch calculatorButton {
        case .clear:
            currentComputation = ""
            mainResult = "0"
        
        case .equal, .negative:
//            print("Equal/Negative")
            if !currentComputation.isEmpty {
                if !lastCharacterIsAnOperator(str: currentComputation) {
                    let sign = calculatorButton == .negative ? -1.0 : 1.0
                    
                    mainResult = formatResult(val: sign * calculateResults())
                    
                    if calculatorButton == .negative {
                        currentComputation = mainResult
                    }
                }
            }
        case .decimal:
//            print("decimal")
            if let lastOccurenceOfDecimal = currentComputation.lastIndex(of: ".") {
                if lastCharIsDigit(str: currentComputation) {
                    let startIndex = currentComputation.index(lastOccurenceOfDecimal, offsetBy: 1)
                    let endIndex = currentComputation.endIndex
                    let range = startIndex..<endIndex
                    let rightSubString = String(currentComputation[range])
                    
                    // only have digits to the right. that means do not add another"." otherwise we can add another decimal point.
                    
                    // 23.37+108 Good -> 23.37+108
                    // 123.45 Bad -> Remains 123.45
                    if Int(rightSubString) == nil && !rightSubString.isEmpty {
                        currentComputation += "."
                    }
                }
            } else {
                if currentComputation.isEmpty {
                    currentComputation += "0."
                } else if lastCharIsDigit(str: currentComputation) {
                    currentComputation += "."
                }
            }
        case .percentage:
//            print("Percentage")
            if lastCharIsDigit(str: currentComputation) {
                appedToCurrentComputation(calculatorButton: calculatorButton)
            }
        case .addition, .subtraction, .multiplication, .division:
//            print("Operations")
            if lastCharIsDigitOrPercent(str: currentComputation) {
                appedToCurrentComputation(calculatorButton: calculatorButton)
            }
        default:
//            print("digits")
            appedToCurrentComputation(calculatorButton: calculatorButton)
        }
    }
    
    // Implements the actual computation.
    func calculateResults() -> Double {
        let visibleWorkings: String = currentComputation
        var workings = visibleWorkings.replacingOccurrences(of: "%", with: "* 0.01")
        workings = workings.replacingOccurrences(of: multiplicationSymbol, with: "*")
        workings = workings.replacingOccurrences(of: divisionSymbol, with: "/")
        
        // if we have "35." this will be replaced.
        if getLastChar(str: visibleWorkings) == "." {
            workings += "0"
        }
        // key point.
        // Actual computation.
        let expr = NSExpression(format: workings)
        let exprValue = expr
            .expressionValue(with: nil, context: nil) as! Double
        
        return exprValue
    }
    
    func appedToCurrentComputation(calculatorButton: CalculatorButton) {
        currentComputation += calculatorButton.rawValue
    }
}

#Preview {
    CalculatorButtonView(currentComputation: .constant("5 + 1"), mainResult: .constant("6"))
}
