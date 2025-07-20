//
//  ContentView.swift
//  BitIntTest
//
//  Created by hoonkichae on 7/20/25.
//

import SwiftUI
import BigInt

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            printPowerOfTwo()
        }
    }
    
    private func printPowerOfTwo() {
        [1, 2, 4, 10, 32, 64, 128, 256].forEach {
            let result = BigUInt(1) << $0
            print("2^\($0) =", result)
        }
    }
}

#Preview {
    ContentView()
}
