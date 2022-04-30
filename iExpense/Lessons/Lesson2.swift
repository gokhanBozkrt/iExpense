//
//  Lesson2.swift
//  iExpense
//
//  Created by Gokhan Bozkurt on 30.04.2022.
//

import SwiftUI

struct SecondView : View {
    @Environment(\.dismiss) var dismiss
    var name:String?
    
    var body: some View {
        VStack {
            Text("Hello\(name ?? "")")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}



struct Lesson2: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Guys")
        }

    }
}

struct Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Lesson2()
    }
}
