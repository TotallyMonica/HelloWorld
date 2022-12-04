//
//  ContentView.swift
//  HelloWorld
//
//  Created by Monica Hanson on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                ForEach(1...100, id: \.self) {
                    Text(fizzbuzz($0))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let fizzbuzz:(Int) -> String = { i in
        switch(i % 3 == 0, i % 5 == 0){
            case (true, false):
                return "Fizz"
            case (false, true):
                return "Buzz"
            case (true, true):
                return "FizzBuzz"
            default:
                return "\(i)"
        }
}
