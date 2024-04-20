//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack{
                //Title
                VerticleTitleView()
                Spacer()
                MessagesView()

                
            }
            .padding()
        }

    }
}

#Preview {
    LandscapeGreetingsView()
}
