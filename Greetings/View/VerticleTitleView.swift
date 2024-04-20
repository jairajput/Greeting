//
//  VerticleTitleView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct VerticleTitleView: View {
    @State private var subtitle:LocalizedStringKey =  "Explore iOS Programming"

    var body: some View {
        VStack(alignment: .leading){
              GreetingsTextView(subtitle: $subtitle)
        
                RotatableCircleView()
            Spacer()
            }
        .padding(.vertical)
        }
    }

#Preview {
    VerticleTitleView()
}
