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
            printSuperComputerPower()
            printTotalHumanAccount()
        }
    }
    
    private func printPowerOfTwo() {
        [1, 2, 4, 10, 32, 64, 128, 256].forEach {
            let result = BigUInt(1) << $0
            print("2^\($0) =", result)
        }
    }
    
    private func printSuperComputerPower() {
        print("=====super computer power=====")
        let powerPerSecond = BigUInt(1) << 60
        print("power/s", powerPerSecond)
        let yearPower = powerPerSecond * 60 * 60 * 24 * 365
        print("1year/s", yearPower)
        let twoPower256 = BigUInt(1) << 256
        print("2^256까지 한번씩 체크한다고 하면 \(twoPower256 / yearPower)년 필요")
    }
    
    private func printTotalHumanAccount() {
        let twoPower256 = BigUInt(1) << 256
        let totalAccount = BigUInt("8000000000") * 1000
        print("전세계사람이 1000개씩 주소를 사용한다고 한다면 \(totalAccount)")
        print("\(twoPower256 / totalAccount) 분의 1 만큼 점유함")
    }
}

#Preview {
    ContentView()
}
