//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct GreetingsTextView: View {
    let subtitles:[LocalizedStringKey] = [
        "In the world of iOS development, every pixel counts.",

        "Swift is not just a programming language; it's a way of life for iOS developers." ,

        "Designing for iOS is like painting on a canvas that's constantly changing size.",

        "The best iOS apps are the ones that seamlessly blend functionality with elegance." ,

        "iOS development is a journey where every bug you squash brings you one step closer to app perfection." ,

        "When it comes to iOS programming, attention to detail separates the good from the great." ,

        "In the iOS ecosystem, user experience reigns supreme." ,

        "SwiftUI: Changing the way iOS apps are built, one declarative statement at a time." ,

        "iOS development is like solving a puzzle where the pieces keep changing shape.",

        "The iOS App Store: Where dreams become apps and apps become sensations." ,
]
    @Binding var subtitle:LocalizedStringKey

    var body: some View {
        VStack(alignment: .leading ,spacing:0){
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
            .onTapGesture {
                subtitle = subtitles.randomElement() ?? "Explore iOS Programming"
            }

    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("g"))
}
