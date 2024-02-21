//
//  ContentView.swift
//  WeSplit
//
//  Created by Laxman Singh Koranga on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool
    @State private var checkAmount: Double = 0.0
    @State private var numberOfPeople: Int = 2
    @State private var tipPercentage: Int = 5
//    let tipPercentages = [0, 10, 15, 20, 25]
    
    // totalAmount without split.
    var totalAmount: Double {
        let tipSelection = Double(tipPercentage)
        
        let tipValue = ((checkAmount / 100) * tipSelection)
        let grandTotal = (checkAmount + tipValue)
        
        return grandTotal
    }
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = ((checkAmount / 100) * tipSelection)
        let grandTotal = (checkAmount + tipValue)
        let amountPerPerson = (grandTotal / peopleCount)
        
        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section("How much do you want to tip?") {
                    Picker("Tip Percentage", selection: $tipPercentage) {
//                        ForEach(tipPercentages, id: \.self) {
//                            Text($0, format: .percent)
//                        }
                        ForEach(0..<101) {
                            Text("\($0)%")
                        }
                    }
//                    .pickerStyle(.segmented)
                }
                
                //            .pickerStyle(.navigationLink)
                
                Section("Total amount for the check") {
                    Text(totalAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
