//
//  MessagesView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct MessagesView: View {
    let messages:[DataItemModel] = [
        DataItemModel(text: "Hey there", color: .myGreen),
    DataItemModel(text: "Welcome to The Club", color: Color("myGray")),
        DataItemModel(text: "Are You Ready", color: .myGray),
        DataItemModel(text: "Start Exploring", color: .myred),
        DataItemModel(text: "Boom", color: .myPurple)

    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages){ dataItem in
                TextView(text: dataItem.text, color: dataItem.color)

            }
        }
    }
}

#Preview {
    MessagesView()
}
