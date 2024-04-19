//
//  TextView.swift
//  Greetings
//
//  Created by Jai  on 19/04/24.
//

import SwiftUI

struct TextView: View {
    let text:String
    let color:Color
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundColor(Color.white)
            .background(color)
            .cornerRadius(20)
            .shadow(color: color, radius:5 ,x:5,y:5)    }
}

#Preview {
    VStack{
        TextView(text: "Hey", color: .green)
    }
}
