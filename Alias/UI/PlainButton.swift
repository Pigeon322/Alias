//
//  NextButton.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct PlainButton: View {
    var text: String = ""
    var style: ButtonStyle = .next
    var action: () -> () = { }
    
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

#Preview {
    PlainButton()
}
