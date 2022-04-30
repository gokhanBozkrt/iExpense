//
//  Expenses.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
              if let encoded = try? JSONEncoder().encode(items) {
                  UserDefaults.standard.set(encoded, forKey: "Items")
              }
          }

    }
    
    
    init() {
        dataDecoder()
        
    }
    

    
    func dataDecoder() {
        guard let savedItems = UserDefaults.standard.data(forKey: "Items") else {
           // fatalError("Couldnt find user data")
            return
        }
        let decoder = JSONDecoder()
        guard let decodedItems = try? decoder.decode([ExpenseItem].self, from: savedItems) else {
            fatalError("Couldnt decode Json")
        }
        
            self.items = decodedItems
        
       
    }
    
    func removeItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
  
    
    
}
