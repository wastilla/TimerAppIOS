//
//  ContentView.swift
//  Timer App
//
//  Created by will astilla on 2/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

        var body: some View {
            Text("Time Remaining: \(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
