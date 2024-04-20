//
//  TitleView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading ,spacing:0){
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Explore iOS Programming")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TitleView()
}
