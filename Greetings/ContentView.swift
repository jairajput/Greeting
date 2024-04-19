//
//  ContentView.swift
//  Greetings
//
//  Created by Jai  on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Hey", color: .green)
            TextView(text: "Welcome to The Club", color: .gray)
            TextView(text: "Are You Ready", color: .yellow)
            TextView(text: "Start Exploring", color: .red)
            TextView(text: "Boom", color: .purple)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
