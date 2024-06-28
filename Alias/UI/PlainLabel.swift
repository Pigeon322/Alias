//
//  PlainLabel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct PlainLabel: View {
    var text: String = ""
    var size: CGFloat = 35
    var color: Color = .pink.opacity(0.7)
    
    var body: some View {
            VStack {
                Text(text)
                    .bold()
                    .font(.system(size: size))
                    .foregroundStyle(color)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 10)
            }
        }
}

#Preview {
    PlainLabel()
}
