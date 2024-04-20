//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State private var isRotated:Bool = false
    
    var angle : Angle{
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient{
        AngularGradient.init(gradient: Gradient(colors: [Color.blue,Color.green,Color.red,Color.pink,Color.purple]), center: .center,angle: .zero)
    }
    @State private var subtitle:LocalizedStringKey =  "Explore iOS Programming"
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
    
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient
                          ,lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width:diameter,height:diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                    subtitle = subtitles.randomElement() ?? "Explore iOS Programming"


                }
                
            }

    }
}

#Preview {
    RotatableCircleView()
}
