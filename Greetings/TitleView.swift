//
//  TitleView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State private var isRotated:Bool = false
    
    var angle : Angle{
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient{
        AngularGradient.init(gradient: Gradient(colors: [Color.blue,Color.green,Color.red,Color.pink,Color.purple]), center: .center,angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading ,spacing:0){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Explore iOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            Spacer()
            Circle()
                .strokeBorder(angularGradient
                              ,lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width:diameter,height:diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()

                    }
                    
                }
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
