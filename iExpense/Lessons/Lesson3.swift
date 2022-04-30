//
//  Lesson3.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import SwiftUI

struct Lesson3: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }.onDelete(perform: removeRows)
                    
                }
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }.navigationTitle("OnDelete()")
                .toolbar {
                    EditButton()
                }
        }
    }
    func removeRows(at offsetts: IndexSet) {
        numbers.remove(atOffsets: offsetts)
    }
}

struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3()
    }
}
