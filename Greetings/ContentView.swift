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
            BackgroundView()
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
