//
//  TitleView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct TitleView: View {
  
    @State private var subtitle:LocalizedStringKey =  "Explore iOS Programming"

    var body: some View {
        HStack {
          GreetingsTextView(subtitle: $subtitle)
            Spacer()
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack{
        TitleView()
            Spacer()
    }
    .padding()
}
