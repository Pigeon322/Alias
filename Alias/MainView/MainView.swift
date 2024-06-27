//
//  ContentView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0) {
            playViewButton
            
            buttonsStack
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
    }
    
    private var playViewButton: some View {
        VStack {
            Button {
                
            } label: {
                Text("Играть")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(15)
            .padding()
        }
    }
    
    private var buttonsStack: some View {
        HStack(spacing: 10) {
            rulesButton
            
            settingsButton
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
    
    private var rulesButton: some View {
        VStack {
            Button {
                
            } label: {
                Text("Правила")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .cornerRadius(15)
        }
    }
    
    private var settingsButton: some View {
        VStack {
            Button {
                
            } label: {
                Text("Играть")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .cornerRadius(15)
        }
    }
    
}

#Preview {
    MainView()
}
