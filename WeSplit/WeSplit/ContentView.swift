//
//  ContentView.swift
//  WeSplit
//
//  Created by didi on 2023/12/13.
//

// 包含程序的初始用户界面（UI），我们将在此项目中完成所有工作。

import SwiftUI

struct ContentView: View {
//    @State private var tapCount = 0
//    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Text("Hello, world!")
//        NavigationStack {
//               Form {
//                   Picker("Select your student", selection: $selectedStudent) {
//                       ForEach(students, id: \.self) {
//                           Text($0)
//                       }
//                   }
//               }
//        }
//        Button("Tap Count: \(tapCount)") {
//            self.tapCount += 1
//        }
//        Form {
//            ForEach(0..<100) { number in
//                Text("Row \(number)")
//            }
//        }
//        Form {
//            ForEach(0 ..< 100) {
//                Text("Row \($0)")
//            }
//        }
//        NavigationStack {
//            Form {
//                Section {
//                    Text("Hello, world!")
//                }
//                TextField("Enter your name", text: $name)
//                Text("Your name is \(name)")
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

#Preview {
    ContentView()
}
