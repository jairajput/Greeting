//
//  TextView.swift
//  Greetings
//
//  Created by Jai  on 19/04/24.
//

import SwiftUI

struct TextView: View {
    let text:String
    @State  var  color:Color
    let colors:[Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red:0.5,green: 0.5,blue: 0.5),
        Color(red:0,green: 0.5,blue: 0.5),
        Color(red:139/255,green: 207/255,blue: 240/255),
        Color(red:1,green: 215/255,blue: 0),
        
    ]
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundColor(Color.white)
            .background(color)
            .cornerRadius(20)
            .shadow(color: color, radius:5 ,x:5,y:5)  
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? .red

                }
    
            }
    }
}

#Preview {
    VStack{
        TextView(text: "Hey", color: .green)
    }
}
