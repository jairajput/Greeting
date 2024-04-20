//
//  MessagesView.swift
//  Greetings
//
//  Created by Jai  on 20/04/24.
//

import SwiftUI

struct MessagesView: View {
    let messages:[DataItemModel] = [
    DataItemModel(text: "Hey there", color: .green),
    DataItemModel(text: "Welcome to The Club", color: .gray),
    DataItemModel(text: "Are You Ready", color: .yellow),
    DataItemModel(text: "Start Exploring", color: .red),
    DataItemModel(text: "Boom", color: .purple)

    ]
    var body: some View {
        ForEach(messages){ dataItem in
            TextView(text: dataItem.text, color: dataItem.color)

}
    }
}

#Preview {
    MessagesView()
}
