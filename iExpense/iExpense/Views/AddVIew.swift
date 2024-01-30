//
//  AddVIew.swift
//  iExpense
//
//  Created by Laxman Singh Koranga on 30/01/2024.
//

import SwiftUI

struct AddVIew: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0 
    
    var expenses: Expenses
    @Environment(\.dismiss) var dismiss
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "INR"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddVIew(expenses: Expenses())
}
