//
//  ContentView.swift
//  secp256k1Test
//
//  Created by hoonkichae on 7/20/25.
//

import SwiftUI
import P256K

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
            printTest()
        }
    }
    
    func printTest() {
        print("###", try? P256K.KeyAgreement.PrivateKey())
        
    }
}

#Preview {
    ContentView()
}
