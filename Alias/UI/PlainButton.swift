//
//  NextButton.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct PlainButton: View {
    var text: String = ""
    var style: ButtonStyle
    var action: () -> () = { }
    
    init(
        _ text: String,
        style: ButtonStyle = .next,
        action: @escaping () -> Void
    ) {
        self.text = text
        self.style = style
        self.action = action
    }
    
    var body: some View {
            VStack {
                Button {
                   action()
                } label: {
                    Text(text)
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                }
                .frame(maxWidth: .infinity)
                .background(style == .next ? .blue : .red)
                .cornerRadius(15)
                .padding()
            }
        }
}

extension PlainButton {
    enum ButtonStyle {
        case next
        case extra
    }
}
