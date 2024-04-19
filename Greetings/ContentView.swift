//
//  ContentView.swift
//  Greetings
//
//  Created by Jai  on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan,.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Greeting!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(Color.purple)
                    .background(Color.orange)
                    .cornerRadius(20)
                    .shadow(color: .orange, radius:5 ,x:5,y:5)
                    .padding()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
