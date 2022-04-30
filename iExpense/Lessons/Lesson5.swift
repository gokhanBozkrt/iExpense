//
//  Lesson5.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import SwiftUI

struct User1: Codable {
    let firstName: String
    let lastName: String
}



struct Lesson5: View {
    @State var user1 = User1(firstName: "Tom", lastName: "Cruise")
    
    var body: some View {
        Button("Save name") {
            let encoder = JSONEncoder()
            guard let data = try? encoder.encode(user1) else {
                fatalError("Couldnt save the data")
            }
            UserDefaults.standard.set(data, forKey: "UserData")
        }
    }
}

struct Lesson5_Previews: PreviewProvider {
    static var previews: some View {
        Lesson5()
    }
}
