//
//  SettingsView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            PlainLabel(text: "Настройки")
            
            getLabel(text: "Длительность раунда")
        }
    }
    
    @ViewBuilder
    private func getLabel(text: String) -> some View {
        VStack {
            Text(text)
                .font(.system(size: 15))
        }
    }
}

#Preview {
    SettingsView()
}
