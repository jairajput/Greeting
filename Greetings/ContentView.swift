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
            Color.black.opacity(0.2)
                .ignoresSafeArea() 
            VStack(alignment: .leading) {
                //Title
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
