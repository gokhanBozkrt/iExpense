//
//  ContentView.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import SwiftUI

struct ContentView: View {
   @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment:.leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: "TRY"))
                    }
                    
                }.onDelete(perform: expenses.removeItems)
                
            }.navigationTitle("iExpense")
                .toolbar {
                    Button {
                        self.showingAddExpense = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $showingAddExpense) {
                    AddView(expenses: expenses)
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
