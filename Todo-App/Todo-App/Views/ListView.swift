//
//  ListView.swift
//  Todo-App
//
//  Created by Laxman Singh Koranga on 19/02/2024.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listviewModel.items.isEmpty {
                NoListView()
                    .transition(AnyTransition.opacity
                        .animation(.easeIn))
            } else {
                List {
                    ForEach(listviewModel.items) { item in
                        ListRowView(item: item)
                    }
                }
            }
        }
        .navigationTitle("Todo List 🖋️")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }.environmentObject(ListViewModel())
    }
}
