//
//  ContentView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
           playViewButton
        }
        .padding()
    }
    
    private var playViewButton: some View {
        VStack {
            Button {
                
            } label: {
                Text("Играть")
                    .foregroundStyle(.white)
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(15)
        }
    }
}

#Preview {
    MainView()
}
