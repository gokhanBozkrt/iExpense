//
//  Lesson1.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//


/*
 When you want to use a class instance elsewhere – when you’ve created it in view A using @StateObject and want to use that same object in view B – you use a slightly different property wrapper called @ObservedObject. That’s the only difference: when creating the shared data use @StateObject, but when you’re just using it in a different view you should use @ObservedObject instead.
 */

import SwiftUI

class User : ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}



struct Lesson1: View {
   @StateObject var user = User()
    var body: some View {
        VStack {
            Text("your name is \(user.firstName) \(user.lastName)")
            TextField("Name", text: $user.firstName)
            TextField("Surname", text: $user.lastName)
        }
    }
}

struct Lesson1_Previews: PreviewProvider {
    static var previews: some View {
        Lesson1()
    }
}
