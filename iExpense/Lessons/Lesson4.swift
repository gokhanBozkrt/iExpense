//
//  Lesson4.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import SwiftUI

struct Lesson4: View {
   // @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
 @AppStorage("tapCount") private var tapCount = 0
    var body: some View {
        Button("Top count: \(tapCount)") {
            self.tapCount += 1
         //   UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct Lesson4_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4()
    }
}
