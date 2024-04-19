//
//  ContentView.swift
//  Greetings
//
//  Created by Jai  on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    
    let messages:[DataItemModel] = [
    DataItemModel(text: "Hey", color: .green),
    DataItemModel(text: "Welcome to The Club", color: .gray),
    DataItemModel(text: "Are You Ready", color: .yellow),
    DataItemModel(text: "Start Exploring", color: .red),
    DataItemModel(text: "Boom", color: .purple)

    ]
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: messages[0].text, color: messages[0].color)
            TextView(text: messages[1].text, color: messages[1].color)
            TextView(text: messages[2].text, color: messages[2].color)
            TextView(text: messages[3].text, color: messages[3].color)
            TextView(text: messages[4].text, color: messages[4].color)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
